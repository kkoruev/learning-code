class Hash
  def fetch_deep(path)
    all_keys = path.split('.')
    get_value_by_keys(all_keys, self)
  end

  def reshape(shape)
    cloned_shape = shape.clone
    replace_path_strings(shape.keys, cloned_shape)
    self.replace(cloned_shape)
  end

  private

  def replace_path_strings(keys, hash)
    return {} if keys.empty?
    current_value = hash[keys.first]
    if current_value.is_a?(Hash)
      replace_path_strings(current_value.keys, current_value)
    else
      hash[keys.first] = self.fetch_deep(current_value)
      replace_path_strings(keys[1, keys.length], hash)
    end
  end

  def get_value_by_keys(keys, hash)
    is_array = hash.is_a?(Array)
    is_hash = hash.is_a?(Hash)
    return nil if hash == nil
    return nil if !is_array && !is_hash

    value = find_correct_value(is_array, keys.first, hash)
    return value if keys.length == 1

    get_value_by_keys(keys[1, keys.length], value)
  end

  def find_correct_value(is_array, next_key, hash)
    # easy way to check if String is an Integer
    is_int = next_key.to_i.to_s == next_key
    return hash[next_key.to_i] if is_array && is_int
    return nil if is_array && !is_int

    is_key_string = hash.key?(next_key)
    is_key_string ? hash[next_key] : hash[next_key.to_sym]
  end
end

class Array
  def reshape(shape)
    replace_hashes(self, shape)
    self
  end

  private

  def replace_hashes(array_to_reshape, shape)
    return if array_to_reshape.empty?
    first_hash = array_to_reshape.first
    first_hash.reshape(shape) if first_hash.is_a?(Hash)
    replace_hashes(array_to_reshape[1, array_to_reshape.length], shape)
  end
end

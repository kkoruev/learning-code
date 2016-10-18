def convert_between_temperature_units(degrees, current_unit, conversion_unit)
  convertion_units = {
    'CF' => degrees * 1.8 + 32,
    'CK' => degrees + 273.15,
    'FC' => (degrees - 32) * 5 / 9,
    'FK' => (degrees + 459.67) * 5 / 9,
    'KC' => degrees - 273.15,
    'KF' => degrees * 1.8 - 459.67
  }

  if current_unit == conversion_unit
    degrees
  else
    convertion_units[current_unit + conversion_unit]
  end
end

def melting_point_of_substance(substance, unit)
  substances_melting_points = {
    'water' => 0,
    'ethanol' => -114,
    'gold' => 1_064,
    'silver' => 961.8,
    'copper' => 1_085
  }
  selected_substance_melting = substances_melting_points[substance]
  convert_between_temperature_units(selected_substance_melting, 'C', unit)
end

def boiling_point_of_substance(substance, unit)
  substances_boiling_points = {
    'water' => 100,
    'ethanol' => 78.37,
    'gold' => 2_700,
    'silver' => 2_162,
    'copper' => 2_567
  }
  selected_substance_boiling = substances_boiling_points[substance]
  convert_between_temperature_units(selected_substance_boiling, 'C', unit)
end

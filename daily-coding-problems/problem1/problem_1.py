# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.


def is_number_add_up_to_k(numbers, k):
    len_of_numbers = len(numbers)
    for index, number in enumerate(numbers):
        index += 1
        while index < len_of_numbers:
            result = number + numbers[index]
            index += 1
            if result == k:
                return True
    return False
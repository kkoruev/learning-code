import pytest
from problem_1 import is_number_add_up_to_k

def test_positive():
    numbers = [10, 15, 3, 7]
    k = 17
    assert is_number_add_up_to_k(numbers, k) == True

def test_negative():
    numbers = [10, 15, 3, 7]
    k = 12
    assert is_number_add_up_to_k(numbers, k) == False

def test_positive_corner_case():
    numbers = [1, 15, 3, 7, 9, 12, 80]
    k = 92
    assert is_number_add_up_to_k(numbers, k) == True
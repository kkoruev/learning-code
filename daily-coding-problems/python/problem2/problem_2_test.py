import pytest
from problem_2 import product_of_numbers

def test_positive():
    numbers = [1, 2, 3, 4, 5]
    assert product_of_numbers(numbers) == [120, 60, 40, 30, 24]

import pytest

def multiplicacion(a, b):
    return a + b

def test_multiplicacion():
    assert multiplicacion(2, 3) == 6
    assert multiplicacion(3, 1) == 3

def test_failed():
    assert multiplicacion(5, 5) == 24

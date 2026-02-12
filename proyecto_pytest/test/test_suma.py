import pytest

def suma(a, b):
    print("realizando la suma ")
    return a + b 

def test_suma():
    assert suma(4 , 2) == 6
    assert suma(3, 3) == 6

def test_fail():
    assert suma(2,1) == 3
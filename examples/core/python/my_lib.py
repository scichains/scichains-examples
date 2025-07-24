import numpy


def my_function():
	return "Hello from my library!"

def my_function_array():
    return numpy.array([1,2,3])

def my_function_with_import(params):
    m = params._sys.local_import("my_sub_lib.py")
    return m.my_sub_function()

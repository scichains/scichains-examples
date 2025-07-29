import numpy
# - this is a usual Python module, we need to import "numpy" explicitly
from pyalgart.api import import_file


def my_function():
	return "Hello from my library!"

def my_function_array():
    return numpy.array([1,2,3])

def my_function_with_import():
    m = import_file("my_sub_lib.py")
    # note: we may use a relative path instead of "lib/my_sub_lib.py"
    # only if "lib" is specified as "Current working folder" in the executor
    return m.my_sub_function()

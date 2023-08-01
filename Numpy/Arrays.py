# Arrays

import numpy

def arrays(arr):
    # complete this function
    # use numpy.array
    
    return numpy.array(arr, dtype=float)[::-1]
    
    
arr = input().strip().split(' ')
result = arrays(arr)
print(result)

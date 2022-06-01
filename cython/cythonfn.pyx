# cythonfn.pyx
from cython.parallel import prange
import cython


@cython.boundscheck(False)
@cython.wraparound(False)
def expensive_function():
    acum: cython.ulong = 0
    divider: cython.ulong = 10000
    n: cython.ulong
    """
    for n in range(0, divider+1):
        multiplier: cython.ulong = n * n;
        acum += multiplier
    """
    with nogil:
        for n in prange(0, divider+1, schedule="guided"):
            multiplier: cython.ulong = n * n;
            acum += multiplier
    end: cython.ulong = acum // divider;
    print("Hello, world! {}".format(end));

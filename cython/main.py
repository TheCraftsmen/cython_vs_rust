import time
import cythonfn


if __name__ == "__main__":
    start_time = time.time_ns()
    cythonfn.expensive_function()
    end_time = time.time_ns()
    print(f"Time taken is {(end_time - start_time) / 1000}us")
# 1-11p 1.1 1.2 習題

import math
from tokenize import Double

# region log_operation [計算 log2]
def log_operation(number: float):
    '''
    計算 log2

    Args:
        number = 浮點數

    Returns :
        log2 計算結果
    '''
    return math.log(number, 2)
# endregion

print(log_operation(128))
print(log_operation(256))
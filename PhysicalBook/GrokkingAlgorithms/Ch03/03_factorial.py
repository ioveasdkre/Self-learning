# region greet2 [計算任一數字的階層]
def fact(x: float):
    '''
    計算任一數字的階層

    Args:
        x = 浮點數

    Returns :
        void
    '''

    if x >= 1:
        if x == 1:
            return 1
        else:
            return x * fact(x-1)
    
    return x
# endregion

print(fact(3.5))

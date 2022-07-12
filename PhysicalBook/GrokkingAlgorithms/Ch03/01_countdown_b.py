# region countdown [遞迴停止條件]
def countdown(i: int):
    '''
    遞迴停止條件

    遞迴函式 加入停止條件

    Args:
        i = 次數

    Returns :
        void
    '''

    # Base case 基本情況
    print(i)
    if i <= 1: # 當 i 小於等於 1 時就結束遞迴
        return
  
    # Recursive case 遞迴情況
    else:
        countdown(i-1) # 否則用 i-1 呼叫 countdown
# endregion

countdown(5)

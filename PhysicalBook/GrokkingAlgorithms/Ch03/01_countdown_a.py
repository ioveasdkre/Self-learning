# region countdown [遞迴無窮模式]
def countdown(i: int):
    '''
    遞迴無窮模式

    遞迴函式會呼叫自己 在使用上需注意 免得進入無窮循環模式

    Args:
        i = 次數

    Returns :
        void
    '''

    print(i)
    countdown(i-1)
# endregion

countdown(3) # 呼叫 countdown() 執行看看 Ctrl+C 可終止終端機
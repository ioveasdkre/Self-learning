# region greet2 [輸出 how are you name ?]
def greet2(name):
    '''
    輸出 how are you name ?

    Args:
        name = 字串 or 數字

    Returns :
        void
    '''
    print("how are you, ", name, "?")
# endregion

# region bye [輸出 ok bye!]
def bye():
    '''
    輸出 ok bye!

    Args:
        void

    Returns :
        void
    '''
    print("ok bye!")
# endregion

# region greet [遞迴停止條件]
def greet(name):
    '''
    1. 傳入 name參數, 並輸出 hello name !                 此時 greet函式 加入記憶體空間
    2. 暫停 greet函式, 執行 greet2函式                    此時 greet2函式 加入記憶體空間
    3. greet2函式執行完, 輸出 getting ready to say bye... 此時 greet2函式 移除記憶體空間
    4. 執行 bye函式                                       此時 bye函式 加入記憶體空間
    5. bye函式執行完, 繼續 greet函式                       此時 bye函式 移除記憶體空間
    6. greet函式執行完                                     此時 greet函式 移除記憶體空間

    Args:
        name = 字串 or 數字

    Returns :
        void
    '''
    print("hello, ", name, "!")
    greet2(name)
    print("getting ready to say bye...")
    bye()
# endregion

greet("maggie") # 從這裡開始執行

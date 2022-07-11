# region find_smallest_index [在串列中找出最小值的索引]
def find_smallest_index(arr: list):
    '''
    在串列中找出最小值的索引

    Args:
        arr = 儲存元素的 list籃子

    Returns :
        最小值的索引
    '''

    smallest = arr[0]       # 儲存串列最開頭的值 (第 0 個元素值)
    smallest_index = 0      # 從串列第 0 個元素開始
    for i in range(1, len(arr)): # 撈取索引 1到最後一筆資料
        if arr[i] < smallest:    # 判斷 串列第 i索引值小於 第 0索引值
            smallest_index = i   # 記下目前最小值的索引
            smallest = arr[i]    # 記下目前的最小值
    return smallest_index        # 跑完串列就把最小值的索引傳回去
# endregion

# region selection_sort [排序串列中的資料]
def selection_sort(arr: list): # 用 Selection Sort 演算法對串列的元素做排序
    '''
    排序串列中的資料

    Args:
        arr = 儲存元素的 list籃子

    Returns :
        遞增排序完的串列
    '''

    new_arr = []  # 建立新串列
    for i in range(len(arr)): # 撈取原串列
        smallest = find_smallest_index(arr)  # 找出串列中最小值的 index
        new_arr.append(arr.pop(smallest))    # pop() 刪除並返回索引處的項目（默認最後一個）
    return new_arr # append() 會把 pop() 傳回來的元素值加到 new_arr 的尾端
# endregion

print(selection_sort([5, 3, 6, 2, 10]))

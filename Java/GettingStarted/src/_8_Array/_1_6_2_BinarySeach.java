package _8_Array;

public class _1_6_2_BinarySeach
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int[] array = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        int a = binarysearch(array, 8);
        int b = binarysearch(array, 2);
        int c = binarysearch(array, 899);
        // sout + Tab 打印
        System.out.println("8所在的位置 " + a);
        System.out.println("5所在的位置 " + b);
        System.out.println("899所在的位置 " + c);
    }

    public static int binarysearch(int[] list, int key)
    {
        int low = 0;
        int high = list.length - 1;
        while (high >= low)
        {
            int middle = (low + high) / 2;
            if(key < list[middle])
            {
                high = middle -1;
            }

            else if(key > list[middle])
            {
                low = middle + 1;
            }

            else
            {
                return middle;
            }
        }
        return -low - 1;
    }
}
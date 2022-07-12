package _8_Array;

public class _1_6_1_LinearSearch
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int[] array = {1, 8, 9, 2, 3, 5, 4, 6, 7};
        int a = linearsearch(array, 8);
        int b = linearsearch(array, 5);
        int c = linearsearch(array, 899);
        // sout + Tab 打印
        System.out.println("8所在的位置 " + a);
        System.out.println("5所在的位置 " + b);
        System.out.println("899所在的位置 " + c);
    }

    public static int linearsearch(int[] list, int key)
    {
        for(int i = 0;i < list.length; i++)
        {
            if(key == list[i])
            {
                return i;
            }
        }

        return -1;
    }
}
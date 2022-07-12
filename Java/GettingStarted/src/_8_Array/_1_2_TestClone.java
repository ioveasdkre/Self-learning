package _8_Array;

public class _1_2_TestClone
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int a1[] = {1, 2, 3, 4, 5};
        // clone 複製 用于創建並回傳一個對象的拷貝(複製其值，而非其屬性一同複製)
        int a2[] = (int[])a1.clone();
        // sout + Tab 打印
        System.out.println("使用 clone複製的陣列" + (a1 == a2));

        a1[0] = a1[0] + 1;
        for(int i = 0; i < a1.length; i++)
        {
            // print 不換行
            System.out.print("a1: " + a1[i] + " ");
        }
        System.out.println("");

        for(int i = 0; i < a2.length; i++)
        {
            System.out.print("a1: " + a2[i] + " ");
        }
        System.out.println();
    }
}
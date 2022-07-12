package _7_Object_oriented_design;

public class _1_3_3_StaticMemory
{
    // 公開 公用的類別
    public static int x = 1;
    // 私人
    private int u = 4;
    // 保護
    protected void fun(int z)
    {
        int y;
        y = 50 + z;
        // sout + Tab 打印
        System.out.println("Memory函數的區域變數 y = " + y);
    }

    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        _1_3_3_StaticMemory b1 = new _1_3_3_StaticMemory();
        _1_3_3_StaticMemory b2 = new _1_3_3_StaticMemory();
        System.out.println("Memory成員資料 = " + b1.x);
        b1.x = b1.x + 1;
        b2.x = b2.x + 1;
        System.out.println("Memory成員資料 = " + b1.x);
        System.out.println("Memory成員資料 = " + b1.u);
        b1.u = b1.u + 1;
        b2.u = b2.u + 1;
        System.out.println("Memory成員資料 = " + b1.u);
    }
}
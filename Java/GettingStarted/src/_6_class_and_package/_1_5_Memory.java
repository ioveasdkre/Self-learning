package _6_class_and_package;

public class _1_5_Memory
{
    public int x = 1;
    // 私人
    private int u = 4;
    // 受保護
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
        _1_5_Memory b = new _1_5_Memory();
        System.out.println("Memory成員資料 = " + b.x);
        b.fun(5);
        b.fun(5);
        b.x = b.x + 1;
        System.out.println("Memory成員資料 = " + b.x);
    }
}
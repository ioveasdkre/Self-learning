package Second;

import _5_Use_categories_and_objects._1_3_1_Class0;

// extends 是繼承某個類, 繼承之後可以使用父類的方法, 也可以重寫父類的方法
public class Use_1_3_1_Class3 extends _1_3_1_Class0
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        Use_1_3_1_Class3 c = new Use_1_3_1_Class3();
        // sout + Tab 打印
        System.out.println(c.x);
        System.out.println(c.y);
        // System.out.println(c.z);
        // System.out.println(c.u);
        c.fun();
    }
}
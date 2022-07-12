package _2_Raw_data_type;
public class _1_7_ForceNamericType
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        byte i = 30;
        long s = i * 5 + 3;
        // 先乘除後加減
        double t = i * 5.5 + s / 3;
        // sout + Tab 打印
        System.out.println(i);
        System.out.println(s);
        System.out.println((int)t);
    }
}
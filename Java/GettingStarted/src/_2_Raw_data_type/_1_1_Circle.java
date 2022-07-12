package _2_Raw_data_type;
public class _1_1_Circle
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        double radius;
        double area;
        // final 常數型態，值無法改變
        final double pi = 3.14159;
        radius = 10;
        area = radius * radius * pi;
        // 打sout + Tab 打印
        System.out.println("圓的面積是: " + area);
    }
}
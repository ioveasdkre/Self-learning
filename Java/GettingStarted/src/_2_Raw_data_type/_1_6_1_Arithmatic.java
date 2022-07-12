package _2_Raw_data_type;
public class _1_6_1_Arithmatic
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        int a = 1 + 1;
        int b = 2 - 1;
        double div = 6 / 2;
        // 產生錯誤，因為 3.14159為 double資料型態
        // float pi2 = 3.14159
        // 則可以通過編譯，F指定為 float
        float pi2 = 3.14159F;
        double radius = 10;
        double area = radius * radius * pi2;
        double c = 5 % 3;
        // sout + Tab 打印
        System.out.println("算術運算子: " + a);
        System.out.println("算術運算子: " + b);
        System.out.println("算術運算子: " + div);
        System.out.println("算術運算子: " + area);
        System.out.println("算術運算子: " + c);
    }
}
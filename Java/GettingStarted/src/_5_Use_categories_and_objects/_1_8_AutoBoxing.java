package _5_Use_categories_and_objects;

public class _1_8_AutoBoxing
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        Integer grade1;
        int n1 = 88;
        grade1 = n1;
        // sout + Tab 打印
        System.out.println(grade1);

        // valueOf用于回傳给定参数的原生 Number 對象值，参数可以是原生数据类型, String等。
        Integer grade2 = Integer.valueOf(88);
        int n2;
        n2 = grade2;
        System.out.println(grade2);
    }
}
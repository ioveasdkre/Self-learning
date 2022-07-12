package _5_Use_categories_and_objects;

public class _1_5_EnumGrade
{
    // enum 列舉
    enum Grade{A, B, C, D, E}
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        Grade student1, student2, student3;
        student1 = Grade.A;
        student2 = Grade.B;
        student3 = student1;

        // sout + Tab 打印
        System.out.println("student1的成績: " + student1);
        // ordinal 回傳數列位置
        System.out.println("student1 ordinal: " + student1.ordinal());
        // name 回傳常數名稱
        System.out.println("student1 name: " + student1.name());
        System.out.println("student2的成績: " + student2);
        System.out.println("student2 ordinal: " + student2.ordinal());
        System.out.println("student2 name: " + student2.name());
    }
}
package Second;

import _5_Use_categories_and_objects._1_3_4_Circle1;
import _5_Use_categories_and_objects._1_3_4_Rectangle1;
import _5_Use_categories_and_objects._1_3_4_Shape1;
import _5_Use_categories_and_objects._1_3_4_Triangle1;

public class Use_1_3_4_Test
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        _1_3_4_Shape1 s;
        _1_3_4_Circle1 c = new _1_3_4_Circle1(10);
        _1_3_4_Rectangle1 r = new _1_3_4_Rectangle1(5, 2);
        _1_3_4_Triangle1 t = new _1_3_4_Triangle1(2, 2);
        s = c;
        System.out.print(s.area());
        System.out.println();
        s = r;
        System.out.print(s.area());
        System.out.println();
        s = t;
        System.out.print(s.area());
        System.out.println();
    }
}
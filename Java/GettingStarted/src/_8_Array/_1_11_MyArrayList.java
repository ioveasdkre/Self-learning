package _8_Array;


import java.util.ArrayList;

public class _1_11_MyArrayList
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        // ArrayList 是一個可以動態修改的數組，與普通數組的區別就是它是没有固定大小的限制，我们可以添加或删除元素。
        ArrayList<String> cars = new ArrayList<String>();
        // 新增
        cars.add("Benz");
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");
        cars.add("Toyota");
        // .get(位置) 讀取
        // sout + Tab 打印
        System.out.println(cars);
    }
}
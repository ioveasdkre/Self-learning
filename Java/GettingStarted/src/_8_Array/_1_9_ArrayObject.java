package _8_Array;

public class _1_9_ArrayObject
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        String[] words = new String[5];
        words[0] = "I";
        words[1] = "am";
        words[2] = "a";
        words[3] = "good";
        words[4] = "student";

        String output = "陣列 wrods的元素是";
        for(int i = 0; i <= words.length - 1; i++)
        {
            output = output + words[i] + " ";
        }
        // sout + Tab 打印
        System.out.println(output);
    }
}
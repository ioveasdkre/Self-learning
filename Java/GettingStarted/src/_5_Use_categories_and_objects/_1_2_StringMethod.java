package _5_Use_categories_and_objects;

import java.util.Locale;

public class _1_2_StringMethod
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        String sentence = "I am a good student";
        String ChineseWords = "中文字";
        String sentence1, sentence2, sentence3, sentence4;

        // sout + Tab 打印
        System.out.println("原始字串長度: " + sentence);
        System.out.println("字串長度: " + sentence.length());
        System.out.println("中文字的字串長度: " + ChineseWords.length());

        // 英文轉小寫
        // toUpperCase() 英文轉大寫
        sentence1 = sentence.toLowerCase();
        // substring(開始, 結束(不包含))  返回第幾個位置至結束位置的字串
        sentence2 = sentence.substring(5, 10);
        // 將指定的字串参数連接到字符串上
        sentence3 = sentence.concat("大家好");
        // replace(原字串, 改變後的字串) 字串 A改為 B
        sentence4 = sentence.replace('a', 'b');

        System.out.println("sentence1: " + sentence1);
        System.out.println("sentence2: " + sentence2);
        System.out.println("sentence3: " + sentence3);
        System.out.println("sentence4: " + sentence4);
    }
}
/*
Java應用程式main函數的參數是⫿串物件陣列。當Java的應用程式
在直譯器執行時，Java的執行環境會呼叫main函數，而這⫿串參數
args代表了命令模式列的輸入引數。
任何在命令模式列的資訊都是儲⬀在args陣列，來讓程式使用，這
也是一種輸入程式的方法。
範例：CommandLineArgs.java
我們這個範例是在命令模式列的情況下執行。
第四行的args[0]是我們輸入的第一個引數。
第五行的args[1]是我們輸入的第二個引數。
*/

package _8_Array;

public class _1_10_CommandLineArgs
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        // sout + Tab 打印
        System.out.println();
        System.out.println("第一個引數" + args[0]);
        System.out.println("第二個引數" + args[1]);
    }
}
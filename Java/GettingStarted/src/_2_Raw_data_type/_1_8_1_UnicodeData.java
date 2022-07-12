package _2_Raw_data_type;
public class _1_8_1_UnicodeData
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        // 單一字元型態， string則是 ""
        char letter = '\u0041';
        // sout + Tab 打印
        System.out.println(letter);

        letter = '\u0042';
        System.out.println(letter);
    }
}

// xor為^互斥，當只有條件都不相同^(互斥)時才會回傳真true，其他都回傳 false
// 當(條件A(true)) xor(互斥) (條件B()false)傳回真，
// 或當(條件A(false)) xor(互斥) (條件B()true)傳回真，其他則回傳 false
package _8_Array;

public class _1_8_Arrays3
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int[][][] a = new int[2][2][2];
        a[0][0][0] = 1;
        a[0][0][1] = 2;
        a[0][1][0] = 3;
        a[0][1][1] = 4;
        a[1][0][0] = 5;
        a[1][0][1] = 6;
        a[1][1][0] = 7;
        a[1][1][1] = 8;

        String output = "陣列 a的元素是";
        for(int i = 0; i <= a.length - 1; i++)
        {
            for (int j = 0; j <= a[i].length - 1; j++)
            {
                for (int k = 0; k <= a[i][j].length - 1; k++)
                {
                    output = output + a[i][j][k] + " ";
                }
            }
        }
        // sout + Tab 打印
        System.out.println(output);
    }
}
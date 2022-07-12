package _4_function;
public class _1_0_Gcd
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        // sout + Tab 打印
        System.out.println(gcd(21, 15));
    }

    public static int gcd(int m, int n)
    {
        int ans;
        if(m % n == 0)
        {
            ans = n;
        }

        else
        {
            ans = gcd(n, m % n);
        }

        return ans;
    }
}
import java.util.*;

class P7
{
    public static void main(String[] args)
    {
        System.out.print("N = ");
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int count = 0 ;
        for(int i=1; i<=n ; i++)
        {
            if(n%i==0)
                count++;
        }
        if(count==2)
            System.out.print("Prime");
        else
            System.out.print("Not Prime");
    }
}
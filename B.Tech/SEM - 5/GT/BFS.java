import java.util.Scanner;


public class BFS {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of nodes : ");
        int n = sc.nextInt();
        int[][] graph = new int[n][];
        int[] check = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter Number of edges : ");
            int m = sc.nextInt();
            int[] node = new int[m];
            for (int j = 0; j < m; j++) {
                node[j] = sc.nextInt();
            }
            graph[i] = node;
        }


    }
}

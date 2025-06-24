
import java.util.Scanner;

class adjacencyGraph {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of edges : ");
        int n = sc.nextInt();
        int[][] graph = new int[n][2];
        int[] check = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Enter edge of " + (i + 1) + " Node :");
            for (int j = 0; j < 2; j++) {
                graph[i][j] = sc.nextInt();
            }
        }

        for (int i = 0; i < n; i++) {
            if (!contains(check, graph[i][0]) || graph[i][0] == 0) {
                check[i] = graph[i][0];
                System.out.print(graph[i][0] + " => ");
                for (int j = 0; j < n; j++) {
                    if (graph[i][0] == graph[j][0]) {
                        System.out.print(graph[j][1] + " ");
                    }
                }
                System.out.println();
            }
        }
        sc.close();
    }

    static boolean contains(int[] arr, int n) {
        boolean fleg = false;
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == n) {
                fleg = true;
            }
        }
        return fleg;
    }
}

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class BFS {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of nodes : ");
        int n = sc.nextInt();

        int[][] graph = new int[n][];
        ArrayList<Integer> check = new ArrayList<Integer>();

        for (int i = 0; i < n; i++) {
            System.out.print("Enter Number of edges : ");
            int m = sc.nextInt();
            int[] node = new int[m];
            for (int j = 0; j < m; j++) {
                node[j] = sc.nextInt();
            }
            graph[i] = node;
        }

        Queue<Integer> queue = new LinkedList<>();
        
        queue.add(0);
        for(int i=0 ; i<n ; i++){
            for(int j=0 ; j<graph[i].length ; j++){
                if (!queue.contains(graph[i][j]) && !check.contains(graph[i][j])) {
                    queue.add(graph[i][j]);
                } else{
                    int node = queue.remove();
                    if(node != -1){
                        check.add(node);
                    }
                }
            }
        }

        check.forEach(t -> System.out.print(t+", "));
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
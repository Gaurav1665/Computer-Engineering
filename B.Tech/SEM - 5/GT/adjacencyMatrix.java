import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class adjacencyMatrix {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of edges : ");
        int n = sc.nextInt();

        int[][] graph = new int[n][2];

        ArrayList<Integer> vertex = new ArrayList<Integer>();

        int index = 0;

        Queue<Integer> q = new LinkedList<>();

        for(int i=0 ; i<n ; i++){
            System.out.print("Enter "+(i+1)+" egde sor : ");
            graph[i][0] = sc.nextInt();
            System.out.print("Enter "+(i+1)+" egde des : ");
            graph[i][1] = sc.nextInt();

            if (!vertex.contains(graph[i][0])) vertex.add(graph[i][0]);
            if (!vertex.contains(graph[i][1])) vertex.add(graph[i][1]);

            System.out.println();
        }

        int[][] matrix = new int[vertex.size()][vertex.size()];

        for(int i=0 ; i<graph.length ; i++){
            matrix[graph[i][0]-1][graph[i][1]-1] = 1;
            matrix[graph[i][1]-1][graph[i][0]-1] = 1;
        }

        for(int[] i : matrix){
            for(int j : i){
                System.out.print(j+" ");
            }
            System.out.println();
        }
    }
}

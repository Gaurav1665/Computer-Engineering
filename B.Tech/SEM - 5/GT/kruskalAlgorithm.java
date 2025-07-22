import java.util.LinkedList;
import java.util.Queue;
import java.util.Scanner;

public class kruskalAlgorithm {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of edges : ");
        int n = sc.nextInt();

        int[][] graph = new int[n][3];
        int[][] ans = new int[n-1][3];
        int index = 0;

        Queue<Integer> q = new LinkedList<>();

        for(int i=0 ; i<n ; i++){
            System.out.print("Enter "+(i+1)+" egde sorce : ");
            graph[i][0] = sc.nextInt();
            System.out.print("Enter "+(i+1)+" egde destination : ");
            graph[i][1] = sc.nextInt();
            System.out.print("Enter "+(i+1)+" egde value : ");
            graph[i][2] = sc.nextInt();
            System.out.println();
        }
        
        graph = sortByValue(graph);

        for(int i=0 ; i<n ; i++){
            if (q.contains(graph[i][0]) && q.contains(graph[i][1])) {
                continue;
            } else if(!q.contains(graph[i][0]) || !q.contains(graph[i][1])){
                q.add(graph[i][0]);
                q.add(graph[i][1]);
                ans[index++] = graph[i];
            }
        }


        for(int[] i : ans){
            for(int j : i){
                System.out.print(j+" ");
            }
            System.out.println();
        }

        for(int[] i : graph){
            
        }

    }
    static int[][] sortByValue(int[][] arr){
        for(int i=0 ; i<arr.length ; i++){
            for(int j=0 ; j<arr.length ; j++){
                if(arr[i][2] < arr[j][2]){
                    int[] temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
        return arr;
    }
}

import java.util.Scanner;

public class socialNetwork {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of nodes : ");
        int n = sc.nextInt();

        int networkCount = 0;

        int[][] arr = new int[n][n];
        boolean[] visited = new boolean[n];

        for(int i=0 ; i<n ; i++){
            for(int j=0 ; j<n ; j++){
                arr[i][j] = sc.nextInt();
            }
        }

        for(int i=0 ; i<n ; i++){
            for(int j=0 ; j<n ; j++){
                System.out.print(arr[i][j]+" ");
            }
            System.out.println();
        }
        
        for(int i=0 ; i<n ; i++){
            if(arr[i][i]==1 && !visited[i]){
                networkCount++;
                dfs(arr, i, visited);
            }
        }
        System.out.println("Total number of network : "+networkCount);

        sc.close();
    }

    static void dfs(int[][] arr, int n, boolean[] visited){
        for(int i=0 ; i<arr.length ; i++){
            if(arr[n][i] == 1)
                visited[i] = true;
        }
    }
}

//   0 1 2 3
// 0 1 1 0 0
// 1 1 1 0 0
// 2 0 0 1 1
// 3 0 0 1 1

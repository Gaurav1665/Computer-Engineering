import java.util.Scanner;

public class findCutVertex {
    public static void main(String[] args) {
    
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of nodes : ");
        int n = sc.nextInt();

        int[][] graph = new int[n][];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter Number of edges : ");
            int m = sc.nextInt();
            int[] node = new int[m];
            for (int j = 0; j < m; j++) {
                node[j] = sc.nextInt();
            }
            graph[i] = node;
        }
        
        System.out.println("Cut Verices: ");
        for(int k=0 ; k<n ; k++){
            boolean[] visited = new boolean[n];
            for(int i=0 ; i<n ; i++){
                if(k!=i){
                    for(int j=0 ; j<graph[i].length ; j++)
                        visited[graph[i][j]] = true;
                }
            }
            if(isContainsFalse(visited))
                System.out.print(k+", ");
        }
        sc.close();
    }
    static boolean isContainsFalse(boolean[] arr){
        for(boolean var : arr)
            if(!var) return true; 
        
        return false;
    }
}
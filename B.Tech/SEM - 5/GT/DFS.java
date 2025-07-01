import java.util.ArrayList;
import java.util.Scanner;
import java.util.Stack;

class DFS {
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

        System.out.print("Enter starting position : ");
        int start = sc.nextInt();

        Stack<Integer> stack = new Stack<Integer>();
        stack.push(start); 
        
        while (check.size() < n) {
            int lastElement = stack.pop();
            check.add(lastElement);
            for(int i=0 ; i<graph[lastElement].length ; i++){
                if (!check.contains(graph[lastElement][i])) {
                    stack.push(graph[lastElement][i]);
                }
            }
        }

        System.out.print("Check Array : ");
        for(int i : check){
            System.out.print(i+", ");
        }
        sc.close();
    }
}
//stack : 
//check : 2,1,4
import java.util.Scanner;

public class BFS {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of nodes : ");
        int n = sc.nextInt();

        int[][] graph = new int[n][];
        int[] check = new int[n];
        for(int i=0 ; i<n ; i++){
            check[i] = -1;
        }
        int checkIncrement = 0;

        for (int i = 0; i < n; i++) {
            System.out.print("Enter Number of edges : ");
            int m = sc.nextInt();
            int[] node = new int[m];
            for (int j = 0; j < m; j++) {
                node[j] = sc.nextInt();
            }
            graph[i] = node;
        }

        Queue queue = new Queue();
        
        queue.ENQUEUE(0);
        for(int i=0 ; i<n ; i++){
            for(int j=0 ; j<graph[i].length ; j++){
                if (!contains(queue.Q, graph[i][j]) && !contains(check, graph[i][j])) {
                    queue.ENQUEUE(graph[i][j]);
                } else{
                    int node = queue.DEQUEUE();
                    if(node != -1){
                        check[checkIncrement] = node;
                        checkIncrement++;
                    }
                }
            }
        }

        for(int i=0 ; i<n ; i++){
            System.out.print(check[i]+", ");
        }
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

class Queue {
    int[] Q = {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1};
    int F, R;

    Queue() {
        F = R = -1;
    }

    void ENQUEUE(int n) {
        if (R == -1) {
            R = F = 0;
            Q[R] = n;
        } else if (R < Q.length) {
            R++;
            Q[R] = n;
        } else {
            System.out.println("Queue Overflow");
        }
    }

    int DEQUEUE() {
        if (F == -1) {
            System.out.println("Queue Underflow");
            return -1;
        } else if (F == R) {
            int deleted = Q[F];
            F = R = -1;
            return deleted;
        } else {
            int deleted = Q[F];
            F+=1;
            return deleted;
        }
    }

    void DISPLAY() {
        if(F != -1 ){
            for (int i = F; i <= R; i++) {
                System.out.print(Q[i] + ", ");
            }
            System.out.println();
        }
        else{
            System.out.println("Queue Underflow");
        }
    }
}
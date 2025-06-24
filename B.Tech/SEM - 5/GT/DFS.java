import java.util.ArrayList;
import java.util.Scanner;

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

        Stack stack = new Stack(n);
        stack.PUSH(start); 
        
        while (check.size() < n) {
            int lastElement = stack.POP();
            check.add(lastElement);
            for(int i=0 ; i<graph[lastElement].length ; i++){
                if (!check.contains(graph[lastElement][i])) {
                    stack.PUSH(graph[lastElement][i]);
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

class Stack{
    int[] S;
    int TOP;

    Stack(int n){
        S = new int[n];
        TOP = -1;
    }

    void PUSH(int n){
        if(TOP < S.length){
            TOP++;
            S[TOP] = n;
        } else{
            System.out.println("Stack Overflow");
        }
    }

    int POP(){
        if(TOP != -1){
            int deleted = S[TOP];
            TOP--;
            return deleted;
        } else{
            System.out.println("Stack UnderFow");
            return -1;
        }
    }

    void DISPLAY(){
        for(int i=0 ; i<=TOP ; i++){
            System.out.print(S[i]+", ");
        }
        System.out.println();
    }

    boolean contains(int x){
        for(int i=0 ; i<=TOP ; i++ ){
            if(S[i] == x)
                return true;
        }
        return false;
    }
}


//stack : 
//check : 2,1,4
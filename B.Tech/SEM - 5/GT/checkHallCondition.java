import java.util.*;

public class checkHallCondition {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of Vertex in N set: ");
        int n = sc.nextInt();
        System.out.print("Enter number of Vertex in M set: ");
        int m = sc.nextInt();

        List<Integer>[] adj = new List[n];

        for (int i = 0; i < n; i++) {
            adj[i] = new ArrayList<>();
        }

        for(int i=0 ; i<n ; i++){
            System.out.print("Enter number of vertx connected to "+i+" vertex :");
            int temp = sc.nextInt();
            for(int j=0 ; j<temp ; j++){
                adj[i].add(sc.nextInt());
            }
        }

        if (checkHallsCondition(adj, n)) {
            System.out.println("Hall's condition is satisfied.");
        } else {
            System.out.println("Hall's condition is NOT satisfied.");
        }
        sc.close();
    }

    static boolean checkHallsCondition(List<Integer>[] adj,int n) {
        int totalSubsets = 1 << n;
        for (int mask = 1; mask < totalSubsets; mask++) {
            Set<Integer> neighbors = new HashSet<>();
            int setSize = 0;

            for (int i = 0; i < n; i++) {
                if ((mask & (1 << i)) != 0) {
                    setSize++;
                    neighbors.addAll(adj[i]);
                }
            }

            if (neighbors.size() < setSize) {
                System.out.println("Failed for subset size " + setSize + ": neighbors = " + neighbors.size());
                return false;
            }
        }
        return true;
    }
}

import java.util.*;

class LinkStateRouting {
    static class Graph {
        int V; // Number of vertices (routers)
        int[][] adjMatrix; // Adjacency matrix for weights
        int[][] nextHop; // Next hop table [router][destination]
        int[][] distance; // Distance table [router][destination]

        Graph(int V) {
            this.V = V;
            adjMatrix = new int[V][V];
            nextHop = new int[V][V];
            distance = new int[V][V];
            // Initialize adjacency matrix with infinity (no connection)
            for (int i = 0; i < V; i++) {
                Arrays.fill(adjMatrix[i], Integer.MAX_VALUE);
                adjMatrix[i][i] = 0; // Distance to self is 0
            }
            // Initialize nextHop and distance
            for (int i = 0; i < V; i++) {
                Arrays.fill(nextHop[i], -1);
                Arrays.fill(distance[i], Integer.MAX_VALUE);
                distance[i][i] = 0;
                nextHop[i][i] = i;
            }
        }

        void addEdge(int src, int dest, int weight) {
            adjMatrix[src][dest] = weight;
            adjMatrix[dest][src] = weight; // Undirected graph
        }

        void dijkstra(int src) {
            boolean[] visited = new boolean[V];
            distance[src][src] = 0;

            // Initialize distances from source
            for (int i = 0; i < V; i++) {
                distance[src][i] = adjMatrix[src][i];
                if (distance[src][i] != Integer.MAX_VALUE && i != src) {
                    nextHop[src][i] = i;
                }
            }

            visited[src] = true;

            for (int count = 1; count < V; count++) {
                // Find the vertex with minimum distance
                int minDist = Integer.MAX_VALUE;
                int u = -1;
                for (int i = 0; i < V; i++) {
                    if (!visited[i] && distance[src][i] < minDist) {
                        minDist = distance[src][i];
                        u = i;
                    }
                }

                if (u == -1) break; // No more reachable vertices
                visited[u] = true;

                // Update distances and next hops
                for (int v = 0; v < V; v++) {
                    if (!visited[v] && adjMatrix[u][v] != Integer.MAX_VALUE &&
                        distance[src][u] != Integer.MAX_VALUE &&
                        distance[src][u] + adjMatrix[u][v] < distance[src][v]) {
                        distance[src][v] = distance[src][u] + adjMatrix[u][v];
                        nextHop[src][v] = (nextHop[src][u] == src) ? u : nextHop[src][u];
                    }
                }
            }
        }

        void linkStateRouting() {
            // Run Dijkstra's algorithm for each router
            for (int i = 0; i < V; i++) {
                dijkstra(i);
            }
            printRoutingTables();
        }

        void printRoutingTables() {
            for (int i = 0; i < V; i++) {
                System.out.println("Routing table for Router " + (char)('A' + i) + ":");
                System.out.println("Dest\tDistance\tNext Hop");
                for (int j = 0; j < V; j++) {
                    System.out.print((char)('A' + j) + "\t");
                    if (distance[i][j] == Integer.MAX_VALUE) {
                        System.out.print("INF\t");
                    } else {
                        System.out.print(distance[i][j] + "\t");
                    }
                    if (nextHop[i][j] == -1 || i == j) {
                        System.out.println("-");
                    } else {
                        System.out.println((char)('A' + nextHop[i][j]));
                    }
                }
                System.out.println();
            }
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get number of routers
        System.out.print("Enter the number of routers: ");
        int V = scanner.nextInt();
        while (V <= 0) {
            System.out.print("Please enter a positive number of routers: ");
            V = scanner.nextInt();
        }
        scanner.nextLine(); // Consume newline
        Graph graph = new Graph(V);

        // Get edges
        System.out.println("Enter edges (format: router1 router2 weight, e.g., A B 1). Enter 'done' to finish:");
        while (true) {
            String input = scanner.nextLine();
            if (input.equalsIgnoreCase("done")) {
                break;
            }
            String[] parts = input.trim().split("\\s+");
            if (parts.length == 3) {
                try {
                    int src = parts[0].charAt(0) - 'A';
                    int dest = parts[1].charAt(0) - 'A';
                    int weight = Integer.parseInt(parts[2]);
                    if (src >= 0 && src < V && dest >= 0 && dest < V && weight > 0) {
                        graph.addEdge(src, dest, weight);
                    } else {
                        System.out.println("Invalid input: Routers must be within A-" + (char)('A' + V - 1) + " and weight must be positive.");
                    }
                } catch (Exception e) {
                    System.out.println("Invalid input format. Use: A B 1");
                }
            } else {
                System.out.println("Invalid input format. Use: A B 1");
            }
        }

        System.out.println("\nRunning Link State Routing (Dijkstra's Algorithm)...\n");
        graph.linkStateRouting();

        scanner.close();
    }
}

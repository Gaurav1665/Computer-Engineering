import java.util.*;

class DistanceVectorRouting {
    static class Graph {
        int V; // Number of vertices
        List<Edge> edges; // List of edges
        int[][] distance; // Distance table [router][destination]
        int[][] nextHop; // Next hop table [router][destination]

        static class Edge {
            int src, dest, weight;
            Edge(int src, int dest, int weight) {
                this.src = src;
                this.dest = dest;
                this.weight = weight;
            }
        }

        Graph(int V) {
            this.V = V;
            edges = new ArrayList<>();
            distance = new int[V][V];
            nextHop = new int[V][V];
            // Initialize distance and nextHop tables
            for (int i = 0; i < V; i++) {
                Arrays.fill(distance[i], Integer.MAX_VALUE);
                Arrays.fill(nextHop[i], -1);
                distance[i][i] = 0; // Distance to self is 0
                nextHop[i][i] = i;
            }
        }

        void addEdge(int src, int dest, int weight) {
            edges.add(new Edge(src, dest, weight));
            edges.add(new Edge(dest, src, weight)); // For undirected graph
            // Initialize direct connections
            distance[src][dest] = weight;
            distance[dest][src] = weight;
            nextHop[src][dest] = dest;
            nextHop[dest][src] = src;
        }

        void bellmanFord() {
            boolean updated;
            int iteration = 1;

            do {
                updated = false;
                System.out.println("Iteration " + iteration + ":");
                // For each router, update distances
                for (int u = 0; u < V; u++) {
                    for (Edge edge : edges) {
                        int v = edge.src;
                        int w = edge.dest;
                        int weight = edge.weight;

                        // Update distances from v to all destinations
                        for (int dest = 0; dest < V; dest++) {
                            if (distance[v][dest] != Integer.MAX_VALUE) {
                                if (distance[u][w] != Integer.MAX_VALUE &&
                                    distance[u][w] + distance[w][dest] < distance[v][dest]) {
                                    distance[v][dest] = distance[u][w] + distance[w][dest];
                                    nextHop[v][dest] = nextHop[v][w];
                                    updated = true;
                                }
                            }
                        }
                        // Update distances from w to all destinations
                        for (int dest = 0; dest < V; dest++) {
                            if (distance[w][dest] != Integer.MAX_VALUE) {
                                if (distance[u][v] != Integer.MAX_VALUE &&
                                    distance[u][v] + distance[v][dest] < distance[w][dest]) {
                                    distance[w][dest] = distance[u][v] + distance[v][dest];
                                    nextHop[w][dest] = nextHop[w][v];
                                    updated = true;
                                }
                            }
                        }
                    }
                }
                printRoutingTables();
                iteration++;
            } while (updated); // Continue until no updates occur
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
            }
        }

        System.out.println("\nInitial Routing Tables:");
        graph.printRoutingTables();
        System.out.println("\nRunning Distance Vector Routing (Bellman-Ford)...\n");
        graph.bellmanFord();

        scanner.close();
    }
}

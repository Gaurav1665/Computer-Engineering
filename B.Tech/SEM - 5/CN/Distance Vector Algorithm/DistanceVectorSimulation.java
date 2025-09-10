import java.util.*;

class Router {
    private String id;
    private Map<String, Integer> distanceVector;
    private List<Router> neighbors;
    private Map<String, Integer> neighborCosts;

    public Router(String id) {
        this.id = id;
        this.distanceVector = new HashMap<>();
        this.neighbors = new ArrayList<>();
        this.neighborCosts = new HashMap<>();
        this.distanceVector.put(id, 0); // Cost to itself is 0
    }

    public String getId() {
        return id;
    }

    public void addNeighbor(Router neighbor, int cost) {
        this.neighbors.add(neighbor);
        this.neighborCosts.put(neighbor.getId(), cost);
        this.distanceVector.put(neighbor.getId(), cost);
    }

    public Map<String, Integer> getDistanceVector() {
        return new HashMap<>(distanceVector);
    }

    public void update(Map<String, Integer> receivedVector, String sourceId) {
        boolean updated = false;
        int linkCost = neighborCosts.get(sourceId);

        for (String destination : receivedVector.keySet()) {
            int newDistance = linkCost + receivedVector.get(destination);

            if (!distanceVector.containsKey(destination) || newDistance < distanceVector.get(destination)) {
                distanceVector.put(destination, newDistance);
                updated = true;
            }
        }
        if (updated) {
            System.out.println("Router " + id + " updated its table.");
            propagateUpdates();
        }
    }

    public void propagateUpdates() {
        for (Router neighbor : neighbors) {
            neighbor.update(this.getDistanceVector(), this.id);
        }
    }

    public void printDistanceVector() {
        System.out.println("Router " + id + " Distance Vector:");
        for (String destination : distanceVector.keySet()) {
            System.out.println("  -> " + destination + ": " + distanceVector.get(destination));
        }
    }
}

public class DistanceVectorSimulation {
    public static void main(String[] args) {

        Router a = new Router("A");
        Router b = new Router("B");
        Router c = new Router("C");
        Router d = new Router("D");

        a.addNeighbor(b, 2);
        b.addNeighbor(a, 2);
        b.addNeighbor(c, 4);
        b.addNeighbor(d, 1);
        c.addNeighbor(b, 4);
        c.addNeighbor(d, 5);
        d.addNeighbor(b, 1);
        d.addNeighbor(c, 5);

        System.out.println("Starting simulation...");
        a.propagateUpdates();
        b.propagateUpdates();
        c.propagateUpdates();
        d.propagateUpdates();

        System.out.println("\nSimulation complete. Final state:");
        a.printDistanceVector();
        b.printDistanceVector();
        c.printDistanceVector();
        d.printDistanceVector();
    }
}
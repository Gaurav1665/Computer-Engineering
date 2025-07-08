import java.util.LinkedList;
import java.util.Queue;

public class mirrorBinaryTree {
    public static void main(String[] args) {
        int[] arr = {1,2,2,3,4,5,3,1,2,3,4};
        Node newTree = Node.buildTree(arr);
        Node.preOrder(newTree);
        // System.out.println(check(newTree));
    }

    static boolean check(Node tree){
        if(tree == null){
            return false;
        } else if(tree.LChild==null || tree.RChild==null){
            return false;
        } else{
            Queue<Node> q = new LinkedList<Node>();
            q.add(tree.LChild);
            q.add(tree.RChild);
            while(!q.isEmpty()){
                Node a = q.poll();
                Node b = q.poll();

                if(a == null && b == null){
                    continue;
                }
                if(a == null || b == null || a.data != b.data){
                    return false;
                } 
                q.add(a.LChild);
                q.add(b.RChild);
                q.add(a.RChild);
                q.add(b.LChild);

            }
            return true;
        }
    }
}

class Node{
    int data;
    Node LChild;
    Node RChild;

    Node(int n){
        data = n;
        LChild = null;
        RChild = null;
    }

    static Node insertNode(Node root, int data) {
        if (root == null) {
            return new Node(data);
        }

        if (root.LChild == null) {
            root.LChild = new Node(data);
        } else if (root.RChild == null) {
            root.RChild = new Node(data);
        } else {
            if (countNodes(root.LChild) <= countNodes(root.RChild)) {
                insertNode(root.LChild, data);
            } else {
                insertNode(root.RChild, data);
            }
        }

        return root;
    }

    static int countNodes(Node root) {
        if (root == null) return 0;
        return 1 + countNodes(root.LChild) + countNodes(root.RChild);
    }

    static Node buildTree(int[] arr){
        Node root = null;
        for (int data : arr) {
            root = insertNode(root, data);
        }
        return root;
    }

    static void preOrder(Node root)
    {
        if(root != null)
        {
            System.out.print(root.data + " | ");
            preOrder(root.LChild);
            preOrder(root.RChild);
        }
    }
}
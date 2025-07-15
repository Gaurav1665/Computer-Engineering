import java.util.LinkedList;
import java.util.Queue;

public class mirrorBinaryTree {
    public static void main(String[] args) {
        int[] arr = {1,2,2,-1,3,-1,3};
        Node newTree = Node.buildTree(arr);
        //Node.preOrder(newTree);
        System.out.println(check(newTree));
    }

    static boolean check(Node tree){
        if(tree == null){
            return false;
        } else if(tree.left==null || tree.right==null){
            return false;
        } else{
            Queue<Node> q = new LinkedList<Node>();
            q.add(tree.left);
            q.add(tree.right);
            while(!q.isEmpty()){
                Node a = q.poll();
                Node b = q.poll();

                if(a == null && b == null){
                    continue;
                }
                if(a == null || b == null || a.data != b.data){
                    return false;
                } 
                q.add(a.left);
                q.add(b.right);
                q.add(a.right);
                q.add(b.left);

            }
            return true;
        }
    }
}

class Node{
    int data;
    Node left;
    Node right;

    static int index = 0;

    Node(int n){
        data = n;
        left = null;
        right = null;
    }

    static Node insertNode(Node root, int data) {
        if (data == -1){
            return root;
        }
        
        if (root == null) {
            return new Node(data);
        }

        if (root.left == null) {
            root.left = new Node(data);
        } else if (root.right == null) {
            root.right = new Node(data);
        } else {
            int leftCount = countNodes(root.left);
            int rightCount = countNodes(root.right);

            if (leftCount <= rightCount) {
                insertNode(root.left, data);
            } else {
                insertNode(root.right, data);
            }
        }

        return root;
    }


    static int countNodes(Node root) {
        if (root == null) return 0;
        return 1 + countNodes(root.left) + countNodes(root.right);
    }

    static Node buildTree(int[] arr) {
        index = 0; // Reset index before building tree
        return buildTreeHelper(arr);
    }

    static Node buildTreeHelper(int[] arr) {
        if (index >= arr.length || arr[index] == -1) {
            index++;
            return null;
        }

        Node root = new Node(arr[index++]);
        root.left = buildTreeHelper(arr);
        root.right = buildTreeHelper(arr);

        return root;
    }

    static void preOrder(Node root)
    {
        if(root != null)
        {
            System.out.print(root.data + " | ");
            preOrder(root.left);
            preOrder(root.right);
        }
    }
}
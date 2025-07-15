public class treeHeight {
    public static void main(String[] args) {
        int[] arr = {3,9,20,-1,-1,15,7};
        Node newTree = Node.buildTree(arr);
        System.out.println(checkHeight(newTree));
        Node.preOrder(newTree);
    }

    static int checkHeight(Node root){
        if(root.left == null && root.right == null){
            return 1;
        }

        int l = 1, r = 1;

        if(root.left != null) {
            l = checkHeight(root.left) + 1;
        }
        else if(root.right != null) {
            r = checkHeight(root.right) + 1;
        }

        return l > r ? l : r;
    }
}

class Node {
    int data;
    Node left;
    Node right;

    static int index = 0;

    Node(int n) {
        data = n;
        left = null;
        right = null;
    }

    static Node insertNode(Node root, int data) {
        if (data == -1) return root;

        if (root == null) return new Node(data);

        if (root.left == null) {
            root.left = new Node(data);
        } else if (root.right == null) {
            root.right = new Node(data);
        } else {
            int leftCount = countNodes(root.left);
            int rightCount = countNodes(root.right);

            if (leftCount <= rightCount) {
                root.left = insertNode(root.left, data);
            } else {
                root.right = insertNode(root.right, data);
            }
        }

        return root;
    }

    static int countNodes(Node root) {
        if (root == null)
            return 0;
        return 1 + countNodes(root.left) + countNodes(root.right);
    }

    static Node buildTree(int[] arr) {
        index = 0;
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

    static void preOrder(Node root) {
        if (root != null) {
            System.out.print(root.data + " | ");
            preOrder(root.left);
            preOrder(root.right);
        }
    }
}
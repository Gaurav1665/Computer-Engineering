import java.util.Scanner;

public class ParityBitCheck {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the binary number: ");
        String binaryInput = sc.nextLine().trim();

        System.out.print("Enter parity type ( 0 for even / 1 for odd): ");
        int parityType = sc.nextInt();

        int oneCount = 0;
        for (char c : binaryInput.toCharArray()) {
            if (c == '1') {
                oneCount++;
            }
        }

        if (parityType == 0 && oneCount % 2 == 0) {
            System.out.println(binaryInput+"0");
        } else if (parityType == 0 && oneCount % 2 != 0) {
            System.out.println(binaryInput+"1");
        } else if (parityType != 0 && oneCount % 2 != 0) {
            System.out.println(binaryInput+"0");
        } else {
            System.out.println(binaryInput+"1");
        }

        sc.close();
    }
}
import java.util.Scanner;

public class BitStuffing {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the binary data: ");
        String binaryInput = sc.nextLine();

        StringBuilder stuffedData = new StringBuilder();
        int consecutiveOnes = 0;

        for (char bit : binaryInput.toCharArray()) {
            stuffedData.append(bit);
            if (bit == '1') {
                consecutiveOnes++;
                if (consecutiveOnes == 5) {
                    stuffedData.append('0');
                    consecutiveOnes = 0;
                }
            } else {
                consecutiveOnes = 0;
            }
        }

        System.out.print("Bit-stuffed data: ");
        for (int i = 0; i < stuffedData.length(); i++) {
            System.out.print(stuffedData.charAt(i));
        }
        System.out.println();

        sc.close();
    }
}
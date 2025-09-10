import java.util.Scanner;

class BitStuffing {
    // Perform bit stuffing on the input binary string
    static String stuffBits(String binary) {
        StringBuilder stuffed = new StringBuilder();
        int countOnes = 0;

        for (char bit : binary.toCharArray()) {
            stuffed.append(bit);
            if (bit == '1') {
                countOnes++;
                if (countOnes == 5) {
                    stuffed.append('0'); // Insert 0 after five consecutive 1s
                    countOnes = 0;
                }
            } else {
                countOnes = 0; // Reset count on 0
            }
        }
        return stuffed.toString();
    }

    // Perform bit destuffing on the stuffed binary string
    static String destuffBits(String stuffed) {
        StringBuilder destuffed = new StringBuilder();
        int countOnes = 0;

        for (int i = 0; i < stuffed.length(); i++) {
            char bit = stuffed.charAt(i);
            destuffed.append(bit);
            if (bit == '1') {
                countOnes++;
                if (countOnes == 5) {
                    i++; // Skip the stuffed 0 bit
                    countOnes = 0;
                }
            } else {
                countOnes = 0; // Reset count on 0
            }
        }
        return destuffed.toString();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get binary string input
        System.out.print("Enter a binary string (e.g., 01111110): ");
        String binary = scanner.nextLine().trim();
        while (!binary.matches("[01]+")) {
            System.out.print("Invalid input! Enter a valid binary string (0s and 1s only): ");
            binary = scanner.nextLine().trim();
        }

        // Perform bit stuffing
        String stuffed = stuffBits(binary);
        System.out.println("Original binary string: " + binary);
        System.out.println("After bit stuffing:     " + stuffed);

        // Perform bit destuffing
        System.out.print("\nEnter a stuffed binary string to destuff (e.g., " + stuffed + "): ");
        String stuffedInput = scanner.nextLine().trim();
        while (!stuffedInput.matches("[01]+")) {
            System.out.print("Invalid input! Enter a valid stuffed binary string (0s and 1s only): ");
            stuffedInput = scanner.nextLine().trim();
        }

        String destuffed = destuffBits(stuffedInput);
        System.out.println("Stuffed binary string:  " + stuffedInput);
        System.out.println("After bit destuffing:   " + destuffed);

        scanner.close();
    }
}

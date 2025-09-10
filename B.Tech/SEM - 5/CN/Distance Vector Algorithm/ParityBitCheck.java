import java.util.Scanner;

class ParityBitCheck {
    // Calculate parity bit (0 or 1) based on the binary string and parity type
    static int calculateParityBit(String binary, String parityType) {
        int countOnes = 0;
        for (char bit : binary.toCharArray()) {
            if (bit == '1') {
                countOnes++;
            }
        }
        if (parityType.equalsIgnoreCase("even")) {
            return countOnes % 2 == 0 ? 0 : 1; // Even parity: 0 if even number of 1s, 1 if odd
        } else { // Odd parity
            return countOnes % 2 == 0 ? 1 : 0; // Odd parity: 1 if even number of 1s, 0 if odd
        }
    }

    // Verify if the binary string with parity bit is correct
    static boolean verifyParity(String binaryWithParity, String parityType) {
        int countOnes = 0;
        for (char bit : binaryWithParity.toCharArray()) {
            if (bit == '1') {
                countOnes++;
            }
        }
        if (parityType.equalsIgnoreCase("even")) {
            return countOnes % 2 == 0; // Even parity: total 1s (including parity bit) should be even
        } else { // Odd parity
            return countOnes % 2 != 0; // Odd parity: total 1s (including parity bit) should be odd
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get binary string input
        System.out.print("Enter a binary string (e.g., 1011): ");
        String binary = scanner.nextLine().trim();
        while (!binary.matches("[01]+")) {
            System.out.print("Invalid input! Enter a valid binary string (0s and 1s only): ");
            binary = scanner.nextLine().trim();
        }

        // Get parity type input
        System.out.print("Enter parity type (even/odd): ");
        String parityType = scanner.nextLine().trim();
        while (!parityType.equalsIgnoreCase("even") && !parityType.equalsIgnoreCase("odd")) {
            System.out.print("Invalid input! Enter 'even' or 'odd': ");
            parityType = scanner.nextLine().trim();
        }

        // Calculate and display parity bit
        int parityBit = calculateParityBit(binary, parityType);
        System.out.println("Binary string: " + binary);
        System.out.println("Parity type: " + parityType);
        System.out.println("Calculated parity bit: " + parityBit);
        System.out.println("Binary with parity bit: " + binary + parityBit);

        // Verify parity bit
        System.out.print("\nEnter a binary string with parity bit to verify (e.g., " + binary + parityBit + "): ");
        String binaryWithParity = scanner.nextLine().trim();
        while (!binaryWithParity.matches("[01]+")) {
            System.out.print("Invalid input! Enter a valid binary string with parity bit: ");
            binaryWithParity = scanner.nextLine().trim();
        }

        boolean isValid = verifyParity(binaryWithParity, parityType);
        System.out.println("Parity check result: " + (isValid ? "Valid" : "Invalid"));

        scanner.close();
    }
}

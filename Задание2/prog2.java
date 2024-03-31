import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int countMatch = 0;

        Scanner scanner = new Scanner(System.in);
        int nextRound = scanner.nextInt();

        while (nextRound > 1) {
            if (nextRound % 2 == 1) {
                nextRound = (nextRound - 1) / 2 + 1;
                countMatch += nextRound - 1;
            } else {
                nextRound /= 2;
                countMatch += nextRound;
            }
        }

        System.out.println(countMatch);
    }
}

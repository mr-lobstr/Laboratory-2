import java.util.Scanner;

public class Main {
    // возвращаемое значение функции,
    // представляет собой номер (нумерация с 0) операции копирования строки,
    // а так же кол-во копируемых символов

    public static int numberCopyOperation(String s) {
        int i = s.length() - (s.length() % 2);
        int middle = i / 2;

        while (i > middle) {
            if (s.charAt(i - 1) != s.charAt(i - middle - 1)) {
                i = (i % 2 != 0 ? i : i - 1);
                middle = i / 2;
            }
            i--;
        }

        return middle;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String s = scanner.nextLine();

        int num = numberCopyOperation(s);
        int operationsCnt = s.length() - num + (num != 0 ? 1 : 0);

        System.out.print("operations count: " + operationsCnt);

        for (int i = 0; i < operationsCnt; i++) {
            int lenOutStr = i + (i < num || num == 0 ? 1 : num);
            if (i == 0) {
                System.out.print(" = " + s.substring(0, lenOutStr));
            } else {
                System.out.print("->" + s.substring(0, lenOutStr));
            }
        }
    }
}
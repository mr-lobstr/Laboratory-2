import java.util.Scanner;

public class NumberReverse {
    public static int numReverse(int num) {
        int length = 0;
        int numCopy = num;
        int digit = 10;
        
        while (numCopy != 0) {
            if (numCopy % 10 >= digit) {
                return 0;
            }
            
            length += 1;
            digit = numCopy % 10;
            numCopy /= 10;
        }
        
        for (int i = 0; i < length; i++) {
            numCopy = numCopy * 10 + num % 10;
            num /= 10;
        }
        
        return length > 1 ? numCopy : 0;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int count = scanner.nextInt();
        
        while (count > 0) {
            int number = scanner.nextInt();
            int result = numReverse(number);
            
            if (result != 0) {
                System.out.print(result + " ");
            }
            
            count--;
        }
        
        scanner.close();
    }
}
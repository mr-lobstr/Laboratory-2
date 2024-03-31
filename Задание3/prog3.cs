using System;

public class Program
{
    public static int NumReverse(int num)
    {
        int length = 0;
        int numCopy = num;
        int digit = 10;
        
        while (numCopy != 0)
        {
            if (numCopy % 10 >= digit)
            {
                return 0;
            }
            
            length += 1;
            digit = numCopy % 10;
            numCopy /= 10;
        }
        
        for (int i = 0; i < length; i++)
        {
            numCopy = numCopy * 10 + num % 10;
            num /= 10;
        }
        
        return length > 1 ? numCopy : 0;
    }
    
    public static void Main()
    {
        int count = int.Parse(Console.ReadLine());
        
        while (count > 0)
        {
            int number = int.Parse(Console.ReadLine());
            int result = NumReverse(number);
            
            if (result != 0)
            {
                Console.Write(result + " ");
            }
            
            count--;
        }
    }
}
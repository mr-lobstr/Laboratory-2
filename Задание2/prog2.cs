using System;

class Program
{
    static void Main()
    {
        int countMatch = 0;
        int nextRound = int.Parse(Console.ReadLine());

        while (nextRound > 1)
        {
            if (nextRound % 2 == 1)
            {
                nextRound = (nextRound - 1) / 2 + 1;
                countMatch += (nextRound - 1);
            }
            else
            {
                nextRound /= 2;
                countMatch += nextRound;
            }
        }

        Console.WriteLine(countMatch);
    }
}

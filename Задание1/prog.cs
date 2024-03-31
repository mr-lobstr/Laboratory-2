using System;

class Program
{
    // возвращаемое значение функции,
    // представляет собой номер (нумерация с 0) операции копирования строки,
    // а так же кол-во копируемых символов
    static int NumberCopyOperation(string s)
    {
        int i = s.Length - (s.Length % 2);
        int middle = i / 2;

        while (i > middle)
        {
            if (s[i - 1] != s[i - middle - 1])
            {
                i -= 1 - Convert.ToInt32(i % 2 != 0);
                middle = i / 2;
            }
            i--;
        }

        return middle;
    }

    static void Main(string[] args)
    {
        string s = Console.ReadLine();

        int num = NumberCopyOperation(s);
        int operationsCnt = s.Length - num + Convert.ToInt32(num != 0);

        Console.Write($"operations count: {operationsCnt}");

        for (int i = 0; i < operationsCnt; i++)
        {
            int lenOutStr = i + (i < num || num == 0 ? 1 : num);
            if (i == 0)
            {
                Console.Write(" = " + s.Substring(0, lenOutStr));
            }
            else
            {
                Console.Write("->" + s.Substring(0, lenOutStr));
            }
        }
    }
}

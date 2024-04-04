#include <iostream> 
using namespace std;

int numReverse(int num)
{
	int length = 0, numcopy = num, digit = 10;
	while (numcopy)
	{
		if (numcopy % 10 >= digit)
			return 0;

		++length;
		digit = numcopy % 10;
		numcopy /= 10;
	}

	for (int i = 0; i < length; ++i)
	{
		numcopy = numcopy * 10 + num % 10;
		num /= 10;
	}

	return (length > 1) ? numcopy : 0;
}

int main()
{
	int count, number = 0, result;
	cin >> count;

	while (count--)	
	{
		cin >> number;
		if ((result = numReverse(number)) != 0)
		{
			cout << result << " ";
		}
	}

	cout << endl;
}
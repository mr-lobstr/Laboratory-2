#include <iostream> 
using namespace std;

int main()
{
	int nextRound, countMatch = 0;
	cin >> nextRound;

	while (nextRound > 1)
	{
		if (nextRound % 2)
		{
			nextRound = (nextRound - 1) / 2 + 1;
			countMatch += (nextRound - 1);
		} else {
			nextRound /= 2;
			countMatch += nextRound;
		}
	}
	cout << countMatch;
}
#include <iostream> 
#include <string>
using namespace std;

// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов
size_t number_copy_operation (const string& s)
{
	size_t i = s.size() - (s.size() % 2);
	size_t middle = i / 2;

	for (; i > middle; --i)
	{
		if (s[i-1] != s[i - middle - 1])
		{
			i -= !(i % 2);
			middle = i / 2;
		}
	}

	return middle;
}

int main()
{
	string s;
	cin >> s;
	
	size_t num = number_copy_operation(s);
	size_t operationsCnt = s.size() - num + (num != 0);

	cout << "operations count: " << operationsCnt;

	for (size_t i = 0; i < operationsCnt; ++i)
	{
		size_t lenOutStr = i + (i < num or num == 0 ? 1 : num);

		cout << (i > 0 ? "->" : " = ") << s.substr(0, lenOutStr);
	}
}
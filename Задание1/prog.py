# возвращаемое значение функции,
# представляет собой номер (нумерация с 0) операции копирования строки,
# а так же кол-во копируемых символов

def number_copy_operation(s):
	i = len(s) - (len(s) % 2)
	middle = i // 2

	while i > middle:
		if s[i-1] != s[i - middle - 1]:
			i = (i if i % 2 else i-1)
			middle = i // 2
		i -= 1

	return middle


s = input()

num = number_copy_operation(s)
operationsCnt = len(s) - num + (1 if num else 0)

print(f'operations count: {operationsCnt}', end = '')

for i in range(operationsCnt):
	lenOutStr = i + (1 if i < num or num == 0 else num)
	print('->' if i else ' = ', s[:lenOutStr], sep = '', end = '')
def num_reverse(num):
    length = 0
    num_copy = num
    digit = 10
    
    while num_copy:
        if num_copy % 10 >= digit:
            return 0
        
        length += 1
        digit = num_copy % 10
        num_copy //= 10
    
    for i in range(length):
        num_copy = num_copy * 10 + num % 10
        num //= 10
    
    return num_copy if length > 1 else 0

count = int(input())
    
while count > 0:
    number = int(input())
    result = num_reverse(number)
        
    if result != 0:
        print(result, end=" ")
        
    count -= 1
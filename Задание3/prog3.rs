use std::io;

fn num_reverse(num: i32) -> i32 {
    let mut length = 0;
    let mut num_copy = num;
    let mut digit = 10;

    while num_copy != 0 {
        if num_copy % 10 >= digit {
            return 0;
        }

        length += 1;
        digit = num_copy % 10;
        num_copy /= 10;
    }

    let mut num_copy = 0;
    let mut num = num;

    for _ in 0..length {
        num_copy = num_copy * 10 + num % 10;
        num /= 10;
    }

    if length > 1 {
        num_copy
    } else {
        0
    }
}

fn main() {
    let mut count = String::new();
    io::stdin().read_line(&mut count).expect("Failed to read line");
    let count: i32 = count.trim().parse().expect("Invalid input");

    for _ in 0..count {
        let mut number = String::new();
        io::stdin().read_line(&mut number).expect("Failed to read line");
        let number: i32 = number.trim().parse().expect("Invalid input");

        let result = num_reverse(number);

        if result != 0 {
            print!("{} ", result);
        }
    }
}
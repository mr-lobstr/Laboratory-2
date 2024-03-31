// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов

fn number_copy_operation(s: &str) -> usize {
    let mut i = s.len() - (s.len() % 2);
    let mut middle = i / 2;

    while i > middle {
        if s.chars().nth(i - 1) != s.chars().nth(i - middle - 1) {
            i = if i % 2 == 0 { i } else { i - 1 };
            middle = i / 2;
        }
        i -= 1;
    }

    middle
}

fn main() {
    let mut s = String::new();
    std::io::stdin().read_line(&mut s).expect("Failed to read line");

    let num = number_copy_operation(&s.trim());
    let operations_cnt = s.len() - num - (if num != 0 { 0 } else { 1 });

    print!("operations count: {}", operations_cnt);

    for i in 0..operations_cnt {
        let len_out_str = i + if i < num || num == 0 { 1 } else { num };
        if i == 0 {
            print!(" = {}", &s[0..len_out_str]);
        } else {
            print!("->{}", &s[0..len_out_str]);
        }
    }
}
 

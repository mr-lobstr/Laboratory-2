use std::io::{self, BufRead};

fn main() {
    let mut count_match = 0;
    let mut next_round = String::new();

    io::stdin().lock().read_line(&mut next_round).unwrap();
    let mut next_round: i32 = next_round.trim().parse().unwrap();

    while next_round > 1 {
        if next_round % 2 == 1 {
            next_round = (next_round - 1) / 2 + 1;
            count_match += next_round - 1;
        } else {
            next_round /= 2;
            count_match += next_round;
        }
    }

    println!("{}", count_match);
}

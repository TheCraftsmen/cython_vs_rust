use std::time::{Duration, Instant};

fn expensive_function() {
    let mut acum = u64::default();
    let divider: u64 = 10000;
    for n in 1u64..=divider {
        let multiplier = n * n;
        acum += multiplier
    }
    let end = acum / divider;
    println!("Hello, world! {}", end);
}

fn main() {
    let start = Instant::now();
    expensive_function();
    let duration = start.elapsed();

    println!("Time elapsed in expensive_function() is: {:?}", duration);
}
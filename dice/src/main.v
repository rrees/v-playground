module main

import rand

fn main() {
	roll := rand.int_in_range(1, 7) or { panic(err) }
	println('Roll: ${roll}')
}

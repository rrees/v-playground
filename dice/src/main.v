module main

import os
import rand

fn main() {
	if os.args.len != 1 + 3 {
		println("Usage: dice x#ydz")
		exit(1)
	}

	println(os.args[1])

	set_size := os.args[1].int()

	pool_size := os.args[2].int()

	dice_size := 1 + os.args[3].int()

	for _ in 0 .. set_size {
		for _ in 0 .. pool_size {
			a_roll := roll(dice_size)
			println('Roll: ${a_roll}')
		}
	}
}

fn roll(dice_size int) int {
	return rand.int_in_range(1, dice_size) or { panic(err) }
}

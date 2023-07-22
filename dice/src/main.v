module main

import arrays
import os
import rand

fn main() {
	if os.args.len != 1 + 3 {
		println("Usage: dice <number of rolls> <number of dice> <dice size>")
		exit(1)
	}

	set_size := os.args[1].int()

	pool_size := os.args[2].int()

	dice_size := 1 + os.args[3].int()

	for i in 0 .. set_size {
		println("Set ${i + 1}")
		print("Roll: ")
		mut rolls := []int{}
		for _ in 0 .. pool_size {
			a_roll := roll(dice_size)
			rolls << a_roll
		}

		total := arrays.sum(rolls) or { panic(err) }
		roll_list := arrays.join_to_string(rolls, ', ', fn(i int) string { return i.str() })

		println("(${total}) ${roll_list}")
	}
}

fn roll(dice_size int) int {
	return rand.int_in_range(1, dice_size) or { panic(err) }
}

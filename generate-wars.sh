#!/bin/bash

clean_wars() {
	local count=$1
	for i in $(seq 0 $count)
	do
		war_name="war$i"
		rm -rf $war_name
	done
}

# accepts the count of how many wars to generate
generate_wars() {
	count=$1

	for i in $(seq 0 $count)
	do
		local war_name="war$i"
		rm -rf $war_name
		cp -r war $war_name
		echo "include \":$war_name\"" >> settings.gradle
	done
}

clean_wars 50
generate_wars 50

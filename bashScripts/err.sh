
#!/usr/bin/env bash

loop(){
for i in {1..99};do
	echo "Who are you"
	((i++))
done
}

hunt(){
count=1
	until [ $count -gt 10 ];do
		echo "Who The Fuck are you"
		((count++))
	done
	#Using a digit that's below the variables starting point would lead to an infinite loop! e.g
	# $count -lt 0, $count -eq 0, $count -le 0
}

loop2(){
num=1

	while [ $num -ge 0 ]; do
		echo $((9 + 9))
		((num++))
	done

	#To get an infinite loop do: $num -gt 0, $num -ne 0, $num -ge 0
}


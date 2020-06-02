echo "how many files are in the current directory"
echo "Your number: "
read number

function get_file_number {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_file_number)

while [[ $number -ne $correct ]]
do
	if [[ $number -gt $correct ]]
	then
		echo "guess too high"
	else 
		echo "guess too low"
	fi
	echo
	echo "Try again: "
	read number
done

echo "Congrats"

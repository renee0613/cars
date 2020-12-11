#! /bin/bash
# cars.sh
# Kewei Zhang.
echo "Type the number 1 to enter a new car."
echo "Type the number 2 to display the list of cars."
echo "Type the number 3 to quit and exit the program."
read -r INPUT
while [ "$INPUT" -lt "3" ]
do
	case "$INPUT" in
		"1") echo "Type in the year of the car."
		read -r YEAR
		echo "Type in the make of the car."
		read -r MAKE
		echo "Type in the model of the car."
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye!";;
		.*) echo "That is not a valid option. Try again.";;
	esac
	echo "Type the number 1 to enter a new car."
	echo "Type the number 2 to display the list of cars."
	echo "Type the number 3 to quit and exit the program."
	read -r INPUT
done
echo "Goodbye."

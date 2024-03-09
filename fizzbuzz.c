
#include <stdio.h>
#include <string.h>

int check_array(int number) {

	int numbers[3] = {3, 5, 7};
	char words[10][20] = {"fizz", "buzz", "pop"};

	int size_of_arr = sizeof(numbers) / sizeof(numbers[0]);
	
	int print_made = 0;

	for ( int i = 0; i <= size_of_arr; i++ ) {
	
		if ( number % numbers[i] == 0 ) {
			printf(words[i]);
			print_made = 1;
		}

	}
	
	return print_made;

}

void calculate (int number) {

	char string_of_number[50] = "";
	sprintf(string_of_number, "%d", number);

	int check = check_array(number);

	if ( check == 0 ) {

		printf(string_of_number);

	}

	printf("\n");

}

void main() {	

	char store[50] = "";

	strcpy(store, "");
	for (int number = 1; number <= 100; number++) {
		
		char output[50] = "";
		char string_of_number[50];
		sprintf(string_of_number, "%d", number);
		
		calculate(number);
		
	}
}


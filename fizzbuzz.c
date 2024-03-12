#include <stdio.h>
#include <ctype.h>
#include <string.h>

void strclear(char string[]) { strcpy(string, ""); }

void strcap(char string[]) {

	char output_string[500];
	for ( int i = 0; i <= strlen(string); i++ ) {
		
		if (i == 0) {output_string[i] = toupper(string[i]);}
		else {output_string[i] = tolower(string[i]);}
	
	}

	strcpy(string, output_string);

}

void calculate(int number, int condition_number, char result_word[], char output[]) {
	
	int is_first = 0;

	if ( strlen(output) == 0 ) { is_first = 1; }
	if ( number % condition_number == 0 ) { strcat(output, result_word); }
	if ( is_first == 1 ) { strcap(output); }

}

void main() {

	char output[500] = "";
	int ITERATIONS = 100;

	for ( int number = 1; number <= ITERATIONS; number++ ) {
	
		strclear(output);
		calculate(number, 3, "fizz", output);
		calculate(number, 5, "buzz", output);
		
		if ( strlen(output) == 0 ) { printf("%d\n", number); }
		else { printf("%s\n", output); }

	}

}

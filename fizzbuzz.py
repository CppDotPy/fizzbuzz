
cannot_run = True if __name__ != '__main__' else False



def calculate(number, condition_number, result_word, current_output):

    # <Guard Clauses>
    problem = type(number) != int
    problem = type(condition_number) != int
    problem = type(result_word) != str
    problem = type(current_output) != str
    problem = len(result_word.split()) != 1
    if problem: raise SyntaxError('Invalid Arguments for calculate')
    # </Guard Clauses>

    # <Capitalisation Chech>
    if current_output == '': word = result_word[0].upper() + result_word[1:].lower()
    else: word = result_word.lower()
    # </Capitalisation Check>

    # <Condition Check>
    if number % condition_number == 0: return word
    else: return ''
    # </Condition Check>



def main():
    
    if cannot_run: raise RuntimeError('Main Called from non Entry Point')

    ITERATIONS = 100

    for number in range(1, ITERATIONS + 1):
        
        output = ''
        output += calculate(number, 3, 'fizz', output)
        output += calculate(number, 5, 'buzz', output)
        if output == '': output = number
        
        print(output)

main()


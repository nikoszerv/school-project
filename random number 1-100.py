import random

def my_function(number, tries):  
    while tries <= 5:
        randnum = int(input("give a number: "))        
        if randnum > number:
            randnum = int(input("give a number: "))
            print("your input is too high!")
            tries -= 1
            print(f"you have {tries} left")
            continue
        elif randnum < number:
            randnum = int(input("give a number: "))
            print("your input is too low")
            tries -= 1 
            print(f"you have {tries} left")
            continue
        else:
            print("correct")   
            break
    return True

number = random.randint(1, 100)  
tries = 5


my_function(number, tries)     

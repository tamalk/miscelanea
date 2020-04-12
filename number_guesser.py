from os import system, name
import random
def clear(): #Función para borrar el contenido de la consola.
    if name == "nt": #Windows
        _ = system("cls")
    else:
        _ = system("clear") #Otros OS (En este caso Ubuntu)
def check(arg):
    while arg != "y" and arg != "n" and arg != "Y" and arg != "N":
        arg = input(" Please pick a valid option [Y/N]: ")
    return(arg)
def difset(dif):
    while dif != "h" and dif != "H" and dif != "m" and dif != "M" and dif != "e" and dif != "E":
        dif = input(" Please pick a valid option [E/M/H]: ")
    low_dif = dif.lower()
    return(low_dif)
def turn(us_num, com_num):
    attempts = 1w
    while us_num != com_num:
        if us_num > com_num:
            print(" My number is lower!")
        elif us_num < com_num:
            print(" My number is higher!")
        us_num = int(input(" New attempt: "))
        attempts += 1
    return(attempts)
print(" Welcome to Number Guesser!")
while True:
    difficulty = difset(input(" \n Choose your difficulty: \n E = Easy \n M = Medium \n H = Hard \n > "))
    if difficulty == "h":
        number = random.randint(1, 100)
    elif difficulty == "m":
        number = random.randint(1, 50)
    else:
        number = random.randint(1, 20)
    usno = int(input(" Guess the number I'm thinking about: "))
    att = turn(usno, number)
    print(" Congratulations, that's my number! You guessed it in only " + str(att) + " attempts!")
    n = check(input(" Play again? [Y/N]: "))
    clear()
    if n == "n" or n == "N":
        break

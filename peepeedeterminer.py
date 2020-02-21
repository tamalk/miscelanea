import os
import subprocess
import random
os.system("title PYTHON PEE PEE SIZE DETERMINER")
def ns(res):
    while res!=("Y") and res!=("N") and res!= ("y") and res!=("n"):
        print(chr(7)); cat=input("Please type only [Y] or [N], according to your choice: ")
    return (res)

while True:
    length = 0
    print("-- WELCOME TO THE OFFICIAL TAMALKIAN PEE-PEE SIZE DETERMINER SERVICE --")
    realnam = str(input("Please enter thy name: "))
    nombre = realnam.lower()
    length = random.randint(4, 23)
    inches = (length * 0.394)
    print ("8" + ("=" * length) + "D")
    print ("The pee-pee size is: " + str(length) + " cm, " + str(round(inches, 2))+ " in.")
    if (length < 12):
        brutepoints = random.randint(0, 26)
        points = (brutepoints + (2 * length))/10
        print("Not very nice, lad. However, don't give up, length doesn't matter at all, pal. The council rates it " + str(points) + "/10.")
    elif (length < 17) and (length >= 12):
        brutepoints = random.randint((50 - length), (75 - length))
        points = brutepoints + length / 10
        print("Fair, a little above the average. The council rates it " + str(points) + "/10.")
    else:
        brutepoints = random.randint(75, 100)
        points = brutepoints / 10
        print("Nice cock, bro. The council rates it " + str(points) + "/10. Congratulations.")
    restart = ns(input("Restart? [Y/N]: "))
    if (restart == "N" or restart == "n"):
        break
    elif restart == "Y" or restart == "y":
        subprocess.call(["cmd.exe", "/C", "cls"])

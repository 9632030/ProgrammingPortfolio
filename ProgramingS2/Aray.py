import random
import sys

dicenum = input("How many dice do you want to roll? ")
#if(not(dicenum.isdigit())):
    #print("This is not a valid input")
    #sys.exit()
if (int(dicenum) <= 0 or int(dicenum)>= 100):
    print("This is not a valid number of dice")
    sys.exit()
dicesides = input("how many sides on the dice? ")
#if (not(dicesides.isdigit())):
    #print("This is not a valid input")
    #sys.exit()
if (int(dicesides) <=3 or int(dicesides) >=31):
    print("This is not a valid number of sides")
    sys.exit()
dicearray = []
dice = []
resultnums = []
    
for i in range(0,int(dicesides)):
    dice.insert(i,i+1)
for i in range(0,int(dicenum)):
    dicearray.insert(i,dice)
    for i in range(0,len(dicearray)):
        result = random.randint(0,int(dicesides)-1)
        resultnums.insert(i,dicearray[i][result])
        print("Here are you lucky numbers: ", str(resultnums)[1:-1])





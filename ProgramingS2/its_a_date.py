import datetime;

now = datetime.datetime.now()
userInput = raw_input("please enter your birthday here in YYYY/MM/DD format: ")

if (len(userInput)== 10):
    userDay = userInput[8:10]
    userMonth = userInput[5:7]
    userYear = userInput[0:4]
    dage = now.day - int(userDay)
    mage = now.month - int(userMonth)
    yage = now.year - int(userYear)
    timeDif = (yage*365+ mage* 30.4 +dage)
    endMege = int(timeDif/365000)
    endCage = int(timeDif/36500)
    endDege = int(timeDif/3650)
    endYage = int(timeDif/365)
    endMage = int(timeDif/30.4)
    endDage = int(timeDif)
    endHage = int(timeDif*24)
    endMige = int(timeDif*1440)
    endSage = int(timeDif*86400)
    
    print 'You are', endMege,'milleniums', endCage, 'centurys', endDege, 'decades', endYage, 'years', endMage, 'months',endDage,'days', endHage, 'hours',endMige, 'minutes and', endSage, 'seconds old'
else :
    print("Your input is wrong. Try again.")
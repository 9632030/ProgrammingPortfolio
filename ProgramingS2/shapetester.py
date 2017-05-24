#James Ninow

from Boxes import Box
from Sphere import Sphere
from Pyramid import Pyramid

measure = input("What shape do you want? \n1. Box \n2. Sphere \n3. Pyramid \n")

if measure == 1:
    l = input("What is the length: ")
    h = input("What is the height: ")
    w = input("What is the width: ")
    #print ("Box mode has been selected.")
    #box1 = Box(4, 2000, 2)
    box1.displayBox()
    box1.calcVal()
    box1.calcSur 

if measure == 2:
    r = input("What is the radius: ")
    sphere1 = Sphere(r)
    sphere1.displaySphere()
    sphere1.calcVol()
    sphere1.calcSur()
    
if measure == 3:
    l = input("What is the length: ")
    h = input("What is the height: ")
    w = input("What is the width: ")
    pyramid1 = Pyramid(l, h, w)
    pyramid1.displayPyramid()
    pyramid1.calcVol()
    pyramid1.calcSur()
    
else :
    print "Type the numbers 1, 2, or 3 next time"


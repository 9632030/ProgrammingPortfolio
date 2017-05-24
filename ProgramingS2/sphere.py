import math

class Sphere:

   def __init__(self, r):
      self.r = r
   
   def calcVol(self):
      result = (self.r**3)*math.pi*4/3
      print "The volume for your box:", result

   def displaySphere(self):
      print "Radius : ", self.r
      
   def calcSur(self):
      result = (self.r**2)*4*math.pi
      print "The surface area for your box:", result

        
    
import math

class Pyramid:

   def __init__(self, l, w, h):
      self.l = l
      self.w = w
      self.h = h
   
   def calcVol(self):
      result = (self.l*self.w*self.h)/3
      print "The volume for your box:", result

   def displayPyramid(self):
      print "Length : ", self.l, "Width :", self.w, "Height :", self.h
      
   def calcSur(self):
      result = (self.l*self.w+self.l)*((self.w/2)+self.h+self.w)*((self.l/2)+self.h)
      print "The surface area for your box:", result
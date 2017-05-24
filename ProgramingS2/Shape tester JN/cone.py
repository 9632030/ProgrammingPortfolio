import math
class Cone:
    def __init__(self,coneR,coneH):
        self.coneR = int(coneR)
        self.coneH = int(coneH)

    def calcVol(self, coneR, coneH):
        print coneR,coneH
        print("The volume is: " + str((((1/3)*math.pi)*coneR**2)*coneH))

    def calcSA(self,coneR, coneH):
        print("The surface area is: " + str(math.pi*coneR+coneH**2+coneR**2))
class CalcButton {
  boolean isNumber;
  boolean isOperator;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int buttonW;
  int buttonH;
  boolean overBox= false;





  //constructor
  CalcButton(float tempXpos, float tempYpos) {
    xpos= tempXpos;
    ypos= tempYpos;
  }
  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH) {

    numButtonValue= tempNumButtonValue;
    buttonW= tempW;
    buttonH= tempH;
    isNumber=true;
    return this;
  }
  CalcButton asOperator(String tempOpButtonValue, int tempW, int tempH) {
    opButtonValue= tempOpButtonValue;
    buttonW= tempW;
    buttonH= tempH;
    isOperator=true;
    return this;
  }
  CalcButton asSpecial(String buttonValue, int tempW, int tempH) {
    
    spButtonValue=buttonValue;
    buttonW= tempW;
    buttonH= tempH;
    isSpecial=true;
    return this;
  }




  void display() {
    if (isNumber) {
      fill(128);
      stroke(255);
      strokeWeight(1);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 0, 255);
      textSize(18);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (opButtonValue=="clear") {
      fill(128);
      stroke(255);
      strokeWeight(1);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 0, 255);
      textSize(18);
      text(opButtonValue, xpos-1, ypos+30);
    }  else if (isOperator) {
      fill(128);
      stroke(255);
      strokeWeight(1);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 0, 255);
      textSize(18);
      text(opButtonValue, xpos-1, ypos+30);
    } else if (isSpecial) {
      fill(128);
      stroke(255);
      strokeWeight(1);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 0, 255);
      textSize(18);
      text(spButtonValue, xpos-1, ypos+30);
    }else {
      fill(128);
      stroke(255);
      strokeWeight(1);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0, 0, 255);
      textSize(18);
      text(opButtonValue, xpos+15, ypos+30);
    }
  }

  void click() {
    overBox=mouseX >xpos && mouseX<xpos+buttonW && mouseY> ypos && mouseY<ypos+buttonH;
  }
}
CalcButton[] numButtons= new CalcButton[10];
CalcButton[] opButtons= new CalcButton[10];
CalcButton[] spButtons= new CalcButton[1];

String displayValue="0";
String valueToCompute="";
String valueToCompute2="";
float valueToComputeI=0;
float valueToComputeI2=0;
float result=0;
char opValue;
boolean firstNum;

void setup() {
  size(280, 480);
  background(50, 55, 55);
  frameRate(10);
  noFill();
  strokeWeight(1);
  stroke(255, 0, 0);
  rect(1, 1, 277, 477);

  numButtons[0]= new CalcButton(10, 220).asNumber(0, 40, 40);
  numButtons[1]= new CalcButton(65, 220).asNumber(1, 40, 40);
  numButtons[2]= new CalcButton(120, 220).asNumber(2, 40, 40);
  numButtons[3]= new CalcButton(10, 270).asNumber(3, 40, 40);
  numButtons[4]= new CalcButton(65, 270).asNumber(4, 40, 40);
  numButtons[5]= new CalcButton(120, 270).asNumber(5, 40, 40);
  numButtons[6]= new CalcButton(10, 320).asNumber(6, 40, 40);
  numButtons[7]= new CalcButton(65, 320).asNumber(7, 40, 40);
  numButtons[8]= new CalcButton(120, 320).asNumber(8, 40, 40);
  numButtons[9]= new CalcButton(36, 370).asNumber(9, 40, 40);

  firstNum=true;

  opButtons[0]= new CalcButton(195, 220).asOperator("clear", 40, 40);
  opButtons[2]= new CalcButton(170, 270).asOperator("+", 40, 40);
  opButtons[3]= new CalcButton(220, 270).asOperator("-", 40, 40);
  opButtons[4]= new CalcButton(170, 320).asOperator("*", 40, 40);
  opButtons[5]= new CalcButton(220, 320).asOperator("/", 40, 40);
  opButtons[6]= new CalcButton(10, 20).asOperator("sq", 40, 40);
  opButtons[1]= new CalcButton(195, 370).asOperator("=", 40, 40);
  opButtons[7] = new CalcButton(60, 20).asOperator("+/-", 40, 40);
  opButtons[8] = new CalcButton(110, 20).asOperator("x^y", 40, 40);
  opButtons[9] = new CalcButton(160, 20).asOperator("rou", 40, 40);

  spButtons[0] = new CalcButton(95, 370).asSpecial(".", 40, 40);
}


void draw() {
  for (int i=0; i<numButtons. length; i++) {
    CalcButton inumButton= numButtons[i];
    inumButton.display();
  }

  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
  }
  for (int i=0; i<spButtons. length; i++) {
    CalcButton ispButton= spButtons[i];
    ispButton.display();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    CalcButton numButton= numButtons[i];
    numButtons[i].click();
    if (numButtons[i].overBox) {
      if (firstNum) {
        println(i+""+ numButton.numButtonValue);
        valueToCompute+=int(numButton.numButtonValue);
        displayValue=valueToCompute;
      } else {
        valueToCompute2+=int(numButton.numButtonValue);
        displayValue=valueToCompute2;
      }
    }
  }


  for (int i=0; i<opButtons.length; i++) {
    CalcButton iOpButton= opButtons[i];
    iOpButton.click();
    if (iOpButton.overBox) {
      if (iOpButton.opButtonValue=="clear") {
        displayValue = "0";
        opValue='C';
        valueToCompute="";
        valueToCompute2="";
        valueToComputeI=0;
        valueToComputeI=0;
        result=0;
        firstNum=true;
      } else if (iOpButton.opButtonValue== "=") {
        firstNum=true;
        performCalculation();
      } else if (iOpButton.opButtonValue== "+") {
        if (result !=0) {
          opValue='+';
          valueToCompute2="";
          firstNum=false;
          displayValue="+";
        } else {
          opValue='+';
          firstNum=false;
          displayValue="+";
        }
      } else if (iOpButton.opButtonValue== "-") {
        if (result !=0) {
          opValue='-';
          valueToCompute2="";
          firstNum=false;
          displayValue="-";
        } else {
          opValue='-';
          firstNum=false;
          displayValue="-";
        }
      } else if (iOpButton.opButtonValue== "*") {
        if (result !=0) {
          opValue='*';
          valueToCompute2="";
          firstNum=false;
          displayValue="*";
        } else {
          opValue='*';
          firstNum=false;
          displayValue="*";
        }
      } else if (iOpButton.opButtonValue== "/") {
        if (result !=0) {
          opValue='/';
          valueToCompute2="";
          firstNum=false;
          displayValue="/";
        } else {
          opValue='/';
          firstNum=false;
          displayValue="/";
        }
      } else if (iOpButton.opButtonValue== "+/-") {
        opValue='n';
        performCalculation();
      } else if (iOpButton.opButtonValue== "sq") {
        opValue='s';
        performCalculation();
      } else if (iOpButton.opButtonValue== "x^y") {
        opValue='p';
        performCalculation();
      } else if (iOpButton.opButtonValue== "rou") {
        opValue='t';
        performCalculation();
      }
    }
  }


  for (int i=0; i<spButtons.length; i++) {
    CalcButton iSpButton= spButtons[i];
    spButtons[i].click();
    if (spButtons[i].overBox) {
      if (iSpButton.spButtonValue ==".") {
        if (iSpButton.overBox && firstNum ==true) {
          valueToCompute+= iSpButton.spButtonValue;
          displayValue=valueToCompute;
        } else if (iSpButton.overBox && firstNum == false) {
          valueToCompute2+=(iSpButton.numButtonValue);
          displayValue=valueToCompute2;
        } else if (iSpButton.spButtonValue =="") {
          opValue = 'n';
          performCalculation();
        } else if (iSpButton.spButtonValue =="+/-") {
          opValue = 'n';
          performCalculation();
        }
      }
    }
  }
}






void updateDisplay() {
  fill(255, 0, 10);
  rect(10, 70, 250, 125, 7);
  fill(0);
  textSize(20);
  if (firstNum) {
    text(displayValue, 20, 100);
  } else {
    text(valueToCompute + " " + opValue + " " + valueToCompute2, 20, 100);
  }
}


void performCalculation() {
  valueToComputeI=float(valueToCompute);
  valueToComputeI2=float(valueToCompute2);

  if (opValue=='+') {
    result=valueToComputeI+ valueToComputeI2;
    displayValue=str(result);
  } else if (opValue=='-') {
    result=valueToComputeI - valueToComputeI2;
    displayValue=str(result);
  } else if (opValue=='*') {
    result=valueToComputeI * valueToComputeI2;
    displayValue=str(result);
  } else if (opValue=='/') {
    result=valueToComputeI / valueToComputeI2;
    displayValue=str(result);
  } else if (opValue =='n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue=str(valueToComputeI);
    }
  } else if (opValue =='s') {
    if (firstNum) {
      valueToComputeI = sq (valueToComputeI);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = sq(valueToComputeI2);
      displayValue=str(valueToComputeI);
    }
  } else if (opValue =='p') {
    if (firstNum) {
      valueToComputeI = pow(valueToComputeI, valueToComputeI2);
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = pow(valueToComputeI2, valueToComputeI);
      displayValue=str(valueToComputeI);
    }
  }else if (opValue =='t') {
      if (firstNum) {
        valueToComputeI = round(valueToComputeI);
        displayValue = str(valueToComputeI);
      } else {
        valueToComputeI2 = round(valueToComputeI2);
        displayValue=str(valueToComputeI);
      }
    }


    //if (firstNum) {
    //  valueToCompute=displayValue;
    //} else {
    //  valueToCompute=displayValue;
    //  valueToCompute2="";
    //}
  }
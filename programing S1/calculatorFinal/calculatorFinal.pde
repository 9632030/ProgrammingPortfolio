// Instantiate each of the classification of buttons
CalcButton[] numButtons = new CalcButton[2];
CalcButton[] opButtons = new CalcButton[3];

String displayValue = "0";
String valueToCompute = "";  // string value left of operator
String valueToCompute2 = ""; // string value right of operator
float valueToComputeI = 0;   // float value left of operator
float valueToComputeI2 = 0;  // float value right of operator
float result = 0;
char opValue = ' ';
boolean firstNum;

void setup() {
  size(340, 330);
  background(89, 99, 104);
  noFill();
  strokeWeight(3);
  stroke(200);
  rect(1, 1, 337, 327);

  // Populate number buttons
  numButtons[0] = new CalcButton(10, 275, 100, 45, 177).asNumber(0);
  numButtons[1] = new CalcButton(10, 220, 45, 45, 177).asNumber(1);


  // Populate operators

  opButtons[0] = new CalcButton(175, 275, 100, 45, 133).asOperator("=");
  opButtons[1] = new CalcButton(10, 55, 45, 45, #d19955).asOperator("C");
  opButtons[2] = new CalcButton(175, 220, 45, 45, 133).asOperator("+");
  // Set the initial value of first num to true
  firstNum = true;
}

void draw() {
  // Draw number buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
  }

  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].clickButton(mouseX,mouseY);
    if (numButtons[i].overBox) {
      if (firstNum) {
        println(i + " " + numButtons[i].numButtonValue);
        valueToCompute += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].clickButton(mouseX,mouseY);
    if (opButtons[i].overBox) { 
      if (opButtons[i].opButtonValue == "C") {
        displayValue = "0";
        opValue = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI = 0;
        result = 0;
        firstNum = true;
      } else if (opButtons[i].opButtonValue == "=") {
        // Perform calculation
        firstNum = true;
        performCalculation();
      } else if (opButtons[i].opButtonValue == "+") {
        if (result != 0) {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
      }
    }
  }
}

void performCalculation() {
  // set string values to integers
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  // perform calculation based on the appropriate operator
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } 
  // let = work multiple times
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}

void updateDisplay() {
  fill(200, 200, 150);
  rect(10, 10, 320, 35, 7);
  fill(0);
  textSize(15);
  text(displayValue, 20, 41);
  text(valueToCompute + " " + opValue + " " + valueToCompute2, 20, 25);
}
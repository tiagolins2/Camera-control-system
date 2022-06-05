#include <Stepper.h>
//#include <AFMotor.h>
//AF_Stepper m1(200, 1);
//AF_Stepper m2(200, 2);
char data[4];
byte numByteAvailable;
String Steps = "";
int val = 0;
int steps;
Stepper steppermotor(32, 8, 10, 9, 11);
Stepper steppermotor2(32, 4, 6, 5, 7); 
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  steppermotor.setSpeed(700);
  steppermotor2.setSpeed(700);
  char a = 'b';
  //Serial.println(" hello world ");
}
void loop() {
  // put your main code here, to run repeatedly:
  delay(100);
  byte numByteAvailable = Serial.available();
  //delay(100);
  char garbage;
  if (numByteAvailable > 1) {
    //Serial.println("start");
    int i;
    for (i = 0; i < numByteAvailable-1; ++i) {
      char raw = Serial.read();
      data[i] = raw;
      //Serial.println(raw);
    }
    garbage = Serial.read();
    //Serial.println("end if in");
    steps= (data[1]-'0')*100+(data[2]-'0')*10+(data[3]-'0')*1;
    //Serial.println(Serial.available());
    //Serial.println(steps);
    if (data[0] == '1') {
      steppermotor.step(steps);
      Serial.println(data[0]*1); 
    }
    else if (data[0] == '2') {
      steppermotor2.step(steps);
      Serial.println(data[0]*1); 
    }
    else if (data[0] == '3') {
      steppermotor.step(-steps);
      Serial.println(data[0]*1); 
    }
    else if (data[0] == '4') {
      steppermotor2.step(-steps);
      Serial.println(data[0]*1); 
    }
    else if (data[0] == '5') {
      digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);  
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW); 
    }
    //Serial.println("end if");
  }
  
  //Serial.println(data[val]);
  //Serial.println(data[0]); Serial.println(data[1]); Serial.println(data[2]); Serial.println(data[3]);
}

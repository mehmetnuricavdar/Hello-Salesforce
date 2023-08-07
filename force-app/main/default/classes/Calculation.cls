public with sharing class Calculation {
  public static Decimal calculate(
    String operation,
    Integer num1,
    Integer num2
  ) {
    switch on operation {
      when 'Add' {
        return num1 + num2;
      }
      when 'Subtract' {
        return num1 - num2;
      }
      when 'Multiply' {
        return num1 * num2;
      }
      when 'Divide' {
        return num1 / num2;
      }
      when else {
        return null;
      }
    }
  } 
}
 
@isTest
public with sharing class CalculationTest {
  @isTest
  static void testAdditon() {
    Decimal result = Calculation.calculate('Add', 1, 3);
    // System.assertEquals(4, result);
    // System.assert(4 == result);
    Assert.areEqual(4, result);
    Assert.isTrue(4 == result);
  }
}
   
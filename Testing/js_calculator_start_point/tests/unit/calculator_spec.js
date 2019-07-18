var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('should have a running total', function(){
    assert.equal(calculator.runningTotal, 0)
  })

  it('should be able to select a number', function(){
    calculator.numberClick(5);
    assert.equal(calculator.runningTotal, 5)
  })

  it('should be able to select an operator', function(){
    calculator.operatorClick('+')
    assert.equal(calculator.previousOperator, '+')
  })

  it('should be able to add', function(){
    calculator.numberClick(4);
    calculator.operatorClick('=');
    calculator.add(1);
    assert.equal(calculator.runningTotal, 5)
  })

  it('should be able to subtract', function(){
    calculator.numberClick(7);
    calculator.operatorClick('=');
    calculator.subtract(4);
    assert.equal(calculator.runningTotal, 3)
  })

  it('should be able to multiply', function() {
    calculator.numberClick(5);
    calculator.operatorClick('=');
    calculator.multiply(3);
    assert.equal(calculator.runningTotal, 15)
  })

  it('should be able to divide', function() {
    calculator.numberClick(21);
    calculator.operatorClick('=');
    calculator.divide(7);
    assert.equal(calculator.runningTotal, 3)
  })

  it('should be able to concatenate multiple numbers together', function() {
    calculator.numberClick(9);
    calculator.numberClick(8);
    calculator.numberClick(7);
    calculator.numberClick(6);
    calculator.numberClick(5);
    calculator.numberClick(4);
    calculator.numberClick(3);
    calculator.numberClick(2);
    calculator.numberClick(1);
    assert.equal(calculator.runningTotal, 987654321)
  })

  it('should be able to chain multiple operations', function(){
    calculator.numberClick(5);
    calculator.operatorClick('+');
    calculator.numberClick(4);
    calculator.operatorClick('-');
    calculator.numberClick(2);
    calculator.operatorClick('*');
    calculator.numberClick(3);
    calculator.operatorClick('/');
    calculator.numberClick(3);
    calculator.operatorClick('=');
    assert.equal(calculator.previousTotal, 7)
    assert.equal(calculator.newTotal, true)
  })

  it('should be able to clear runningTotal without affecting the calculation', function(){
    calculator.numberClick(5);
    calculator.operatorClick('+');
    calculator.numberClick(5);
    calculator.operatorClick('=');
    calculator.clearClick();
    calculator.add(5);
    assert.equal(calculator.runningTotal, 15)
  })

});

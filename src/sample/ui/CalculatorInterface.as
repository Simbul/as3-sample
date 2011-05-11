package sample.ui {
  import flash.display.*;
  import flash.text.*;
  import flash.events.*;
  
  import com.bit101.components.*;
  
  import sample.Calculator;
  
  public class CalculatorInterface extends MovieClip {
    public function CalculatorInterface() {
      var calculator = new Calculator(5);
      
      var summary = new TextField();
      summary.width = 500;
      summary.x = 25;
      summary.y = 25;
      summary.text = "Enter two numbers and click the button"
      this.addChild(summary);
      
      var op1 = new InputText();
      op1.width = 50;
      op1.x = 25;
      op1.y = 50;
      op1.text = 12;
      this.addChild(op1);
      
      var op2 = new InputText();
      op2.width = 50;
      op2.x = 145;
      op2.y = 50;
      op2.text = 30;
      this.addChild(op2);
      
      var button = new PushButton();
      button.label = "+";
      button.x = 85;
      button.y = 50;
      button.width = 50;
      this.addChild(button);
      
      var res = new TextField();
      res.x = 225;
      res.y = 50;
      res.text = "?";
      this.addChild(res);
      
      button.addEventListener(MouseEvent.CLICK, function() {
        res.text = calculator.add(op1.text, op2.text);
      });
      
    }
  }
}

package sample {
  public class Calculator {
    
    private var _increment:Number;
    
    public function Calculator(increment:Number) {
      this._increment = increment;
    }
    
    public function add(x:Number, y:Number) {
      return x + y;
    }
    
    public function sub(x:Number, y:Number) {
      return x - y;
    }
    
    public function inc(x:Number) {
      return x + this._increment;
    }
  }
}

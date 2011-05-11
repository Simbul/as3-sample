package sample {
  import org.hamcrest.*;
  import org.hamcrest.core.*;
  
  import sample.Calculator;
  
  public class CalculatorTest {
    private var _calculator:Calculator;

    [Before]
    public function setUp() {
      this._calculator = new Calculator(5);
      assertThat(this._calculator, isA(Calculator));
    }

    [After]
    public function tearDown() {
      this._calculator = null;
    }

    [Test]
    public function adding() {
      assertThat(this._calculator.add(1, 2), 3);
    }
    
    [Test]
    public function subtracting() {
      assertThat(this._calculator.sub(1, 2), -1);
    }
    
    [Test]
    public function incrementing() {
      assertThat(this._calculator.inc(5), 10);
    }
  }
}

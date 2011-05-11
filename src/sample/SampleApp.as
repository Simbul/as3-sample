/*
 * This is the main file. Everything starts from here and this will be
 * passed to the compiler.
 */
package sample {
  import flash.display.MovieClip;
  
  import sample.ui.CalculatorInterface;
  
  public class SampleApp extends MovieClip {
    
    public function SampleApp() {
      var ci = new CalculatorInterface();
      
      this.addChild(ci);
    }
    
  }
}

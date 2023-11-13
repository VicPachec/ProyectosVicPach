// Databricks notebook source
println("Hello, Scala!")

// COMMAND ----------

object HelloWorld {
   /* This is my first java program.  
   * This will print 'Hello World' as the output
   */
   def main(args: Array[String]) {
      println("Hello, world!") // prints Hello World
   }
}

// COMMAND ----------

HelloWorld.main(Array())

// COMMAND ----------

var nombre : String = "Victor"

// COMMAND ----------

object Demo {
   def main(args: Array[String]) {
      var myVar :Int = 10;
      val myVal :String = "Hello Scala with datatype declaration.";
      var myVar1 = 20;
      val myVal1 = "Hello Scala new without datatype declaration.";
      
      println(myVar); println(myVal); println(myVar1); 
      println(myVal1);
   }
}

// COMMAND ----------

Demo.main(Array())

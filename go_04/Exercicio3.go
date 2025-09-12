package main

import "fmt"

func fibonacci(n int) {
	if n <= 0 {
		fmt.Println("digite um número maior que zero.")
		return
	}

  var a = 0
  var b = 1
  var temp int
	for i := 0; i < n; i++ {
		fmt.Print(a, " ")
   temp = a + b
     a = b
    b = temp
	}
}

func main() {
	var quantidade int

	fmt.Print("Coloque a quantidade de numeros para a sequencia ")

	fmt.Scanln(&quantidade)
	fibonacci(quantidade)
}

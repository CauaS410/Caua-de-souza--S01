package main

import "fmt"

func main() {
	var num int

	fmt.Print("Digite um número: ")
	fmt.Scanln(&num)

  switch {
  case num % 2 == 0:
    fmt.Println("O número é par.")
    
  case num % 2 != 0:
    fmt.Println("O número é ímpar.")
    
  default:
    fmt.Println("Coloque um numero valido.")
  }
}

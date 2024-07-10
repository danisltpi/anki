package main

import (
	"fmt"
	"time"
)

func thread(s string) {
	for {
		fmt.Print(s)
		time.Sleep(1 * 1e9)
	}
}

func main() {
	go thread("A")
	go thread("B")
	thread("C")
	// In welcher Reihenfolge werden die  Variablen geschrieben?
}

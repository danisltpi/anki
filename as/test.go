package main

import (
	"fmt"
	"sync"
	"time"
)

func detected() {

    x := 1
    var m sync.RWMutex

    go func() {
        x = 2
        m.Lock()
        m.Unlock()

    }()

    m.Lock()
    x = 3
    m.Unlock()

    fmt.Printf("%d", x)
    time.Sleep(1 * time.Second)
}

// false negative
// because critical sections are not reordered
func notDetected() {

    x := 1
    var m sync.RWMutex

    go func() {
        x = 2
        m.Lock()
        m.Unlock()

    }()

    time.Sleep(1 * time.Second)

    m.Lock()
    x = 3
    m.Unlock()

    fmt.Printf("%d", x)

}

func main() {
    detected()
    notDetected()

}
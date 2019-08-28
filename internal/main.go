package main

import "fmt"

func main() {
	InitLogger()
	config := NewConfig()

	fmt.Println(config)

	storage := NewStorage(config.Storage)
	controller := NewFileController(storage)

	InitHttp(config.HTTP, controller)
}

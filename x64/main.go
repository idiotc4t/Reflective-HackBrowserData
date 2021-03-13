package main
import "C"
import (
	"hack-browser-data/cmd"
)
//export run
func run() {
	cmd.Execute()
}

func main() {
	cmd.Execute()
}
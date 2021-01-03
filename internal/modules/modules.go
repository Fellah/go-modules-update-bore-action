package modules

import (
	"fmt"
	"os"
)

func Bar() {
	for _, env := range os.Environ() {
		fmt.Println(env)
	}
}

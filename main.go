package main

import (
	"github.com/kataras/iris"
)

func main() {
	ir := iris.New()
	ir.Get("/", handleGetRoot)
	ir.ListenLETSENCRYPT("fanach.win")
}

func handleGetRoot(ctx *iris.Context) {
	ctx.WriteString("serving https")
	return
}

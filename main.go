package main

import (
	"github.com/kataras/iris"
)

func main() {
	ir := iris.New()
	ir.Get("/", handleGetRoot)
	ir.ListenTLS(":443", "./certs/server.pem", "./certs/server.key")
}

func handleGetRoot(ctx *iris.Context) {
	ctx.WriteString("serving https")
	return
}

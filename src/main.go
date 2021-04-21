package main

import (
	"fmt"
	"net/http"
	"strconv"

	"github.com/go-chi/chi/v5"
)

const PORT = 8080

var SERVE_PORT = ":" + strconv.Itoa(PORT)

func main() {
	router := chi.NewRouter()
	router.Get("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello, world!"))
	})
	fmt.Printf("\n🚀 Starting server at http://localhost%v\n\n", SERVE_PORT)
	http.ListenAndServe(SERVE_PORT, router)
}

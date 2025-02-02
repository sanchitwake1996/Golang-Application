package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello from AWS Code Pipeline using Go by developer sanchit wake!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Starting server on port 8080...")
	http.ListenAndServe("0.0.0.0:8080", nil)

}

package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello this is final code from AWS Code Pipeline using Go by developer sanchit jaywant wake!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Starting server on port 8080...")
	http.ListenAndServe("0.0.0.0:8080", nil)

}

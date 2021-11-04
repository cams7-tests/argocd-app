package main

import "net/http"

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, r *http.Request) {
		rw.Write([]byte("<h1>This ArgoCD test</h1>"))
	})
	http.ListenAndServe(":8080", nil)
}

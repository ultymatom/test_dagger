package hello-world
import {
  "dagger.io/dagger"
  "dagger.io/dagger/core"
}


dagger.#Plan & {
	actions: {
		_alpine: core.#Pull & {source: "alpine:3"}
		// Hello world
		hello: core.#Exec & {
			input: _alpine.output
			args: ["echo", "hello, world!"]
			always: true
		}
	}
}
package app.examplePolicy

import input

default allow = false

allow {
    client_is_allowed
}

client_is_allowed {
    true
    #data[input.identity][_] == input.target
}
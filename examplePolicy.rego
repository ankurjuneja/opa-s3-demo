package system.main

import input

default allow = false

allow {
    client_is_allowed
}

client_is_allowed {
    data[input.identity][_] == input.target
}
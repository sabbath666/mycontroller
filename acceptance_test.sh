#!/bin/bash
test $(curl localhost:9999/test) -eq 'hello sabbath'

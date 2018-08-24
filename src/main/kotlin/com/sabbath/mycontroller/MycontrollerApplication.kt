package com.sabbath.mycontroller

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
@RestController
class MycontrollerApplication{
    @GetMapping("/test")
    fun test()="hello refi"
}

fun main(args: Array<String>) {
    runApplication<MycontrollerApplication>(*args)
}

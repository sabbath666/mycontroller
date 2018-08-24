FROM frolvlad/alpine-oraclejdk8:slim
COPY target/mycontroller.jar .
ENTRYPOINT ["java","-jar","mycontroller.jar"]

#!/usr/bin/env bash
mvn -DskipTests clean package
az spring-cloud app create -n hello -s cnjk8sasc -g cnj --assign-endpoint true --runtime-version Java_11
az spring-cloud app deploy -n hello -s cnjk8sasc -g cnj --artifact-path target/hello-0.0.1-SNAPSHOT.jar
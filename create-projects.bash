#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init \
--boot-version=2.1.0.RELEASE \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-service \
--package-name=io.whatap.jjsong.microservices.core.product \
--groupId=io.whatap.jjsong.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init \
--boot-version=2.1.0.RELEASE \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=review-service \
--package-name=io.whatap.jjsong.microservices.core.review \
--groupId=io.whatap.jjsong.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init \
--boot-version=2.1.0.RELEASE \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=recommendation-service \
--package-name=io.whatap.jjsong.microservices.core.recommendation \
--groupId=io.whatap.jjsong.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init \
--boot-version=2.1.0.RELEASE \
--build=gradle \
--java-version=1.8 \
--packaging=jar \
--name=product-composite-service \
--package-name=se.magnus.microservices.composite.product \
--groupId=se.magnus.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

cd ..
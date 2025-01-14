#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
sudo wget $DL_URL
sudo unzip $Pack_Name.zip
sudo cd $Open_Pack_Name
export JAVA11_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/11.0.15-10/x64
export JAVA18_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/18.0.1-10/x64
export JAVA8_HOME=/opt/hostedtoolcache/Java_Temurin-Hotspot_jdk/8.0.332-9/x64
sh ./gradlew build -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs

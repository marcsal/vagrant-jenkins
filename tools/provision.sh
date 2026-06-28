#!/bin/bash
os=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')

if [[ $os == "ubuntu" ]]; then
  ptool="apt"
else
  ptool="yum"
fi
sudo $ptool install python -y

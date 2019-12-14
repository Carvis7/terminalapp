#!/bin/sh

#install directory
mkdir -p virtualpet
mkdir -p Classes2
#copy ruby files into distribution directory
cp ./terminalapp2.rb ./virtualpet
cp ./README.md ./virtualpet
cp ./Classes2/Cat.rb ./virtualpet/Classes2
cp ./Classes2/Dog.rb ./virtualpet/Classes2
cp ./Classes2/Pet.rb ./virtualpet/Classes2

#install gems
gem install colorize
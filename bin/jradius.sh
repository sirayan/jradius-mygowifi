#!/bin/sh
dir=`pwd`; cd `dirname $0`; bin=./;
classpath="$CLASSPATH:$bin/jradius.jar:$bin/jradius-dictionary.jar"
for jar in $bin/lib/*.jar; do
  classpath="$classpath:$jar" 
done
classpath="$classpath:$bin/lib/" 
CLASSPATH="$classpath" java net.jradius.server.Main jradius-config.xml


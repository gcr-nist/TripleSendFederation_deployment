#!/usr/bin/env bash

DIR=`pwd`
cd target
java \
-Djava.library.path=nar/processid-0.3.0-SNAPSHOT-amd64-Linux-gpp-jni/lib/amd64-Linux-gpp/jni/ \
-Djava.net.preferIPv4Stack=true \
-classpath .:TripleSendFederation_exec-0.0.1-SNAPSHOT.jar:lib/* \
c2w.gui.hla.main.C2WSim \
--step 1.0 \
--lookahead 0.1 \
--realtime \
--federationEndTime 0 \
--seed4DurRNG 0 \
--lockfile /home/vagrant/Projects/cpswt/__lock__ \
TripleFederation \ 
classes/TripleFederation.fed \
classes/default/script.xml \
TripleFederation_main-Deployment1_100 \
NORMAL
echo "DIR=$DIR pwd="`pwd`  
cd $DIR
#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp ${talend.job.sh.classpath} tutorial_talend_studio.ejemploservcioporttype_ejemploservciooperation_0_1.EjemploServcioPortType_EjemploServcioOperation --context=Default "$@"

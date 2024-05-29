$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dfile.encoding=UTF-8' -cp 'null' tutorial_talend_studio.ejemploservcioporttype_ejemploservciooperation_0_1.EjemploServcioPortType_EjemploServcioOperation --context=Default $args

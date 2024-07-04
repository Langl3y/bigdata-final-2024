@echo off
cd C:\kafka_2.12-3.7.1

REM Start ZooKeeper
start cmd /k .\bin\windows\zookeeper-server-start.bat .\config\zookeeper.properties

REM Start Kafka Server
timeout /t 3 /nobreak > NUL  REM
.\bin\windows\kafka-server-start.bat .\config\server.properties

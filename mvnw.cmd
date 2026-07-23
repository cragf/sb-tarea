@echo off
setlocal enabledelayedexpansion
set WRAPPER_JAR=".mvn\wrapper\maven-wrapper.jar"
set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
set DIST_URL=https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar
if not exist %WRAPPER_JAR% (
    echo Downloading Maven Wrapper...
    powershell -Command "Invoke-WebRequest -Uri %DIST_URL% -OutFile %WRAPPER_JAR%"
)
"%JAVA_HOME%\bin\java" -jar "%WRAPPER_JAR%" %*

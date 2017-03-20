# disable default logging api
LOGGING_CONFIG=-Dnop
export JAVA_HOME=/opt/jdk
export JRE_HOME=$JAVA_HOME/jre
export PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin

# logging
JAVA_OPTS="$JAVA_OPTS -Djuli-logback.configurationFile=file://$CATALINA_HOME/conf/logback.xml"
# memory settings
JAVA_OPTS="$JAVA_OPTS -Xms256m  -Xmx512m"
# dump settings
# gc settings
JAVA_OPTS="$JAVA_OPTS -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled"
JAVA_OPTS="$JAVA_OPTS -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=7 -XX:GCLogFileSize=10M"
# ipv6 disabled
JAVA_OPTS="$JAVA_OPTS -Djava.net.preferIPv4Stack=true"

# JMX settings
export CATALINA_OPTS="-Dcom.sun.management.jmxremote=true
                      -Dcom.sun.management.jmxremote.ssl=false
                      -Dcom.sun.management.jmxremote.authenticate=false
                      -Djava.rmi.server.hostname=`hostname`"

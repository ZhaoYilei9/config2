#set Java environment 
export JAVA_HOME=/usr/lib/jdk8 
export JRE_HOME=${JAVA_HOME}/jre 
export CLASSPATH=.:JAVA_HOME/lib:JRE_HOME/lib:${CLASSPATH} 
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH

#set maven environment
M2_HOME=/usr/local/maven
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2_HOME/bin:$PATH 

<mirror>
        <id>nexus-aliyun</id>
        <mirrorOf>central</mirrorOf>
        <name>Nexus aliyun</name>
        <url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>
<mirror> 
	<id>alimaven</id> 
	<name>aliyun maven</name> 
<url>http://maven.aliyun.com/nexus/content/groups/public/</url>
 <mirrorOf>central</mirrorOf> 
</mirror>
<profile>  
        <id>jdk18</id>  
        <activation>  
            <activeByDefault>true</activeByDefault>  
            <jdk>1.8</jdk>  
        </activation>  
        <properties>  
            <maven.compiler.source>1.8</maven.compiler.source>  
            <maven.compiler.target>1.8</maven.compiler.target>  
            <maven.compiler.compilerVersion>1.8</maven.compiler.compilerVersion>  
        </properties>   
</profile>  

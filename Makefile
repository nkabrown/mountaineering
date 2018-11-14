JFLAGS = -g
JC = javac
JVM = java

.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = interpreter/lox/Lox.java \
					interpreter/lox/Scanner.java \
					interpreter/lox/TokenType.java \
					interpreter/lox/Token.java

MAIN = interpreter/lox/Lox

default: classes

classes: $(CLASSES:.java=.class)

run: $(MAIN).class
	$(JVM) $(MAIN)

clean:
	$(RM) interpreter/lox/*.class

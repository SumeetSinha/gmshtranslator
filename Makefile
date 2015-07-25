# declare the variable 

CC= g++ -std=c++11
CFLAGS = -c

all: gmssi

gmssi: gmssi.o Element.o GmshParser.o GmshTranslator.o Mapping.o Node.o PhysicalGroup.o Semantics.o Tokenizer.o 
		$(CC) gmssi.o Element.o GmshParser.o GmshTranslator.o Mapping.o Node.o PhysicalGroup.o Semantics.o Tokenizer.o  -o gmssi

gmssi.o: gmssi.cpp
		$(CC) $(CFLAGS) gmssi.cpp

GmshTranslator.o: GmshTranslator.cpp
		$(CC) $(CFLAGS) GmshTranslator.cpp
GmshParser.o: GmshParser.cpp
		$(CC) $(CFLAGS) GmshParser.cpp
Mapping.o: Mapping.cpp
		$(CC) $(CFLAGS) Mapping.cpp
PhysicalGroup.o: PhysicalGroup.cpp
		$(CC) $(CFLAGS) PhysicalGroup.cpp
Node.o: Node.cpp
		$(CC) $(CFLAGS) Node.cpp
Element.o: Element.cpp 
		$(CC) $(CFLAGS) Element.cpp 
Semantics.o: Semantics.cpp
		$(CC) $(CFLAGS) Semantics.cpp
Tokenizer.o: Tokenizer.cpp
		$(CC) $(CFLAGS) Tokenizer.cpp

clean:
		-rm *.o

install:
		if [ -d "/usr/local/gmssi" ]; then	rm -r /usr/local/gmssi; fi
		echo "creating directory in usr/local/gmssi"
		mkdir /usr/local/gmssi
		mkdir /usr/local/gmssi/src
		mkdir /usr/local/gmssi/bin
		cp *.cpp mapping.fei /usr/local/gmssi/src
		cp mapping.fei gmssi /usr/local/gmssi/bin
		sudo ln -s -f /usr/local/gmssi/bin/mapping.fei /usr/local/bin/mapping.fei
		sudo ln -s -f /usr/local/gmssi/bin/gmssi /usr/local/bin/gmssi







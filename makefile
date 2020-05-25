LIBS = -lpng
DIR_INC = .
DIR_SRC = .
DIR_OBJ = ./obj
DIR_BIN = .
 
SRC = $(wildcard ${DIR_SRC}/*.c)  
OBJ = $(patsubst %.c,${DIR_OBJ}/%.o,$(notdir ${SRC}))  
TARGET = get_qr_demo.a
 
BIN_TARGET = ${DIR_BIN}/${TARGET} 
CC = gcc
CFLAGS = -g -Wall -I${DIR_INC}
 
${BIN_TARGET}:${OBJ}
	$(CC) $(OBJ) -o $@ $(LIBS)
     
#${DIR_OBJ}/%.o:${DIR_SRC}/%.c
${DIR_OBJ}/%.o:%.c
	$(CC) $(CFLAGS) -c  $< -o $@
.PHONY:clean
clean:
	rm -rf $(DIR_OBJ)/*.o *.a 

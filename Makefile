##########################################################
#  CMPSC 457 Section 001                                 #
#  Homework 5                                            #
#                                                        #
#  YOUR NAME                                             #
#  YOUR ACCESS ID                                        #
#                                                        #
#  DATE OF SUBMISSION                                    #
##########################################################




##########################################################
#  CMPSC 457                                             #
#  Makefile for HW 5                                     #
#                                                        #
#  Sukmoon Chang                                         #
#  sukmoon@psu.edu                                       #
#                                                        #
#                                                        #
#                                                        #
#  Your source codes should be named as                  #
#                                                        #
#            template.cxx                                #
#                                                        #
#                                                        #
#  To compile your program, type                         #
#                                                        #
#            make template                               #
#                                                        #
#  or, simply type                                       #
#                                                        #
#            make                                        #
#                                                        #
#  on your shell.                                        #
#                                                        #
#                                                        #
#  To run your program, type                             #
#                                                        #
#            make run                                    #
#                                                        #
#                                                        #
#  To remove the executable 'template' and other backup  #
#  files (e.g., template.cxx~, etc), type                #
#                                                        #
#            make clean                                  #
#                                                        #
##########################################################


# compiler to be used
CC = g++

# flags to the compiler
#CXX_FLAGS = -Wall -ansi -pedantic
CXX_FLAGS = -Wall -std=c++0x -pedantic -O2





# path to directories containing header files
INC_DIR = -I. 

# GL related libraries
GL_LIBS = -lglut -lGLU -lGL

# X related libraries
X_LIBS = -lXext -lm

# Dependent files
DEP_H = model.h
DEP_CXX = model.cxx



#### TARGETS ####

template: template.cxx $(DEP_H) $(DEP_CXX)
	$(CC) -o template template.cxx $(DEP_CXX) $(CXX_FLAGS) $(INC_DIR) $(GL_LIBS) $(X_LIBS)

run: template
	./template

clean:
	rm -f template  *.o *~

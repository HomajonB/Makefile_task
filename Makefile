CXX := g++
CXXFLAGS := -std=c++17
QUIET := @
ECHO := echo
RM := rm


app: main.o
	$(QUIET)$(ECHO) "building app!"
	$(QUIET)$(CXX) -o math_app $^ utilites_floats.cpp utilites_ints.cpp
	$(QUIET)$(RM) -rf *.o 

main.o: main.cpp
	$(QUIET)$(ECHO) "compiling $^ ..."
	$(QUIET)$(CXX) $(CXXFLAGS) -o $@ -c $^
	

default: math_app

.PHONY: clean distclean

distclean: clean
	$(QUIET)$(ECHO) "removing app....!"
	$(QUIET)$(RM) -rf math_app

clean:
	$(QUIET)$(ECHO) "removing all object files!"
	$(QUIET)$(RM) -rf *.o

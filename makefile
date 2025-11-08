
FC = mpiifort -qmkl -mcmodel=large

OBJ = params_module.o globals_modules.o dirhbz.o dirhbz_vapor.o



run: $(OBJ) 
	$(FC) -o run $(OBJ)


%.o: %.f90
	$(FC) -c $< -o $@

%.o: %.f
	$(FC) -c $< -o $@


# Target clean
clean:
	rm -f *.o *.mod $(EXEC)

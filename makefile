
FC = mpiifort -qmkl -mcmodel=large

OBJ = params_module.o globals_modules.o dirhbz.o dirhbz_vapor.o

run: $(OBJ)
	$(FC) -o run $(OBJ)

params_module.o: params_module.f90
	$(FC) -c params_module.f90 -o params_module.o

globals_modules.o: globals_modules.f
	$(FC) -c globals_modules.f -o globals_modules.o

dirhbz.o: dirhbz.f90 params_module.o globals_modules.o
	$(FC) -c dirhbz.f90 -o dirhbz.o

dirhbz_vapor.o: dirhbz_vapor.f params_module.o globals_modules.o dirhbz.o
	$(FC) -c dirhbz_vapor.f -o dirhbz_vapor.o


# Target clean
clean:
	rm -f *.o *.mod run

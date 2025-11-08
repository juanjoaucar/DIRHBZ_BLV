FC = mpiifort  -qmkl -mcmodel=large 

OBJ =  params_module.o dirhbz.o dirhbz_vapor.o globals_modules.o

run: $(OBJ) 
	$(FC) -o run $(OBJ)


%.o: %.f90
	$(FC) -c $< -o $@

#%.o: %.f
#	$(FC) -c $< -o $@

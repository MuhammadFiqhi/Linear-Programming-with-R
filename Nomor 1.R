# Import lpSolve package
library(lpSolve)

# Set coefficients of the objective function
f.obj <- c(3,9)

# Set matrix corresponding to coefficients of constraints by rows
# Do not consider the non-negative constraint; it is automatically assumed
f.con <- matrix(c(1,3,
                  1,1,
                  1,-1
                  ),nrow=3,byrow=TRUE)

# Set unequality signs
f.dir <- c("<=",
           ">=",
           "<="
           )

# Set right hand side coefficients
f.rhs <- c(60,
           10,
           0
           )

# Final value (z)
--#Maximum#--
lp("max",f.obj,f.con,f.dir,f.rhs)
--#minimum#--
lp("min",f.obj,f.con,f.dir,f.rhs)

# Variables final values
--#Maximum#--
lp("max",f.obj,f.con,f.dir,f.rhs)$solution
--#minimum#--
lp("min",f.obj,f.con,f.dir,f.rhs)$solution

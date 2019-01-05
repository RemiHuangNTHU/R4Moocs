### �򥻳]�w ###
library(openxlsx)
library(lmtest)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��
Y     = XLSX[, 6]                               # Ū�� Taiwan ��Ƥ��e
X     = XLSX[, 5]                               # Ū�� Korea ��Ƥ��e
                               


#############################################################################
### X-Y �ϧ� ###                     
plot(Y, X)


### RAMSEY Test: H0 = Linearity ### 
resettest(Y~X)                                 # lmtest �M�󤺨��


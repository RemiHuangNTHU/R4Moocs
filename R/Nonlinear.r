### �򥻳]�w ###
library(openxlsx)

r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��
Y     = XLSX[, 6]                               # Ū�� Taiwan ��Ƥ��e
X     = XLSX[, 5]                               # Ū�� Korea ��Ƥ��e
           
#############################################################################
### X-Y �ϧ� ###                      
plot(X, Y)

### Y = alpha + beta X + gamma X^2 ### 
regression = lm( Y~X+I(X^2) )
summary(regression)


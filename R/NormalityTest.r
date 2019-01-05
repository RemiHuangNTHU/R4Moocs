### �򥻳]�w ###
library(openxlsx)
library(tseries)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��
Taiwan= XLSX[, 6]                               # Ū�� Taiwan ��Ƥ��e
head(Taiwan)                                    # �e�{��ƫe 6 ��


#############################################################################
### �e�X Histogram ###   
hist(Taiwan)

### �e�X Normal QQ Plot ###                     
qqnorm(Taiwan)

### Jarque Bera Test: H0 = Normal Distribution ### 
jarque.bera.test(Taiwan)                        # tseries �M�󤺨��
### �򥻳]�w ###
library(openxlsx)
library(fBasics)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��

#############################################################################
head(XLSX)                                      # �e�{��ƫe 6 ��

### �򥻲έp�q ###                              # �p�⵲�G�� Excel �@��
XLSX = XLSX[, -1]                               # �h���Ĥ@�� (�ɶ�)
result = basicStats(XLSX)                       # �зǮt���p��覡�O���W N-1
result

cor(XLSX)

cov(XLSX)

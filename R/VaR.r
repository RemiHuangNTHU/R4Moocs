### �򥻳]�w ###
library(openxlsx)
library(fExtremes)
r.File= "c:/Remi/Remi Moocs/Data/VaR.xlsx"      # �ɮ׸��|
Sheet = "VaR"                                   # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��
head(XLSX)                                      # �e�{��ƫe 6 ��

### ���s��z��ơA�٭즨 return ###
Data = NULL
for(i in 1:nrow(XLSX)){
   Data = c(Data, rep(XLSX[i, 1], XLSX[i, 2]))
}
head(Data)                                      # �e�{��ƫe 6 �ӭ�

#############################################################################
### �p�� VaR (fExtremes �M��) ###
VaR = VaR(Data, alpha = 0.05)                   # alpha = 5% VaR 
VaR







library(pdfetch)                                # pdfetch �M��

### FRED ��� ###
result = pdfetch_FRED("GDPC1")                  # GDPC1 �� identifier
tail(result)					# �e�{�̫� 6 �浲�G
						
write.csv(result, "c:/xtemp/GDP.csv")           # �ץX��Ʀ� c:\xtemp\GDP.csv

### (1) �p�󪾹D�M��Ҵ��Ѫ�������ƥH�Ψ�\��
### (2) �p�󪾹D identifier ����T




#############################################################################
result2 = pdfetch_FRED(c("GDPC1", "PCECC96"))   # �h�� identifiers ���p
tail(result2)


#############################################################################
### ECB ��� ###
result = pdfetch_ECB("MNA.Q.Y.I8.W2.S1.S1.B.B1GQ._Z._Z._Z.EUR.LR.GY")
tail(result)



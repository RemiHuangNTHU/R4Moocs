library(pdfetch)                                # pdfetch 套件

### FRED 資料 ###
result = pdfetch_FRED("GDPC1")                  # GDPC1 為 identifier
tail(result)					# 呈現最後 6 行結果
						
write.csv(result, "c:/xtemp/GDP.csv")           # 匯出資料至 c:\xtemp\GDP.csv

### (1) 如何知道套件所提供的相關函數以及其功能
### (2) 如何知道 identifier 的資訊




#############################################################################
result2 = pdfetch_FRED(c("GDPC1", "PCECC96"))   # 多個 identifiers 情況
tail(result2)


#############################################################################
### ECB 資料 ###
result = pdfetch_ECB("MNA.Q.Y.I8.W2.S1.S1.B.B1GQ._Z._Z._Z.EUR.LR.GY")
tail(result)



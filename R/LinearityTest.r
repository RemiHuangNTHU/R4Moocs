### 基本設定 ###
library(openxlsx)
library(lmtest)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔
Y     = XLSX[, 6]                               # 讀取 Taiwan 資料內容
X     = XLSX[, 5]                               # 讀取 Korea 資料內容
                               


#############################################################################
### X-Y 圖形 ###                     
plot(Y, X)


### RAMSEY Test: H0 = Linearity ### 
resettest(Y~X)                                 # lmtest 套件內函數


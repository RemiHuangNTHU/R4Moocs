### 基本設定 ###
library(openxlsx)
library(tseries)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔
Taiwan= XLSX[, 6]                               # 讀取 Taiwan 資料內容
head(Taiwan)                                    # 呈現資料前 6 行


#############################################################################
### 畫出 Histogram ###   
hist(Taiwan)

### 畫出 Normal QQ Plot ###                     
qqnorm(Taiwan)

### Jarque Bera Test: H0 = Normal Distribution ### 
jarque.bera.test(Taiwan)                        # tseries 套件內函數
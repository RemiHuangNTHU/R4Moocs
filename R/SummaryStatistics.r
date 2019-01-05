### 基本設定 ###
library(openxlsx)
library(fBasics)
r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔

#############################################################################
head(XLSX)                                      # 呈現資料前 6 行

### 基本統計量 ###                              # 計算結果跟 Excel 一樣
XLSX = XLSX[, -1]                               # 去除第一行 (時間)
result = basicStats(XLSX)                       # 標準差的計算方式是除上 N-1
result

cor(XLSX)

cov(XLSX)

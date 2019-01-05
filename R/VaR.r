### 基本設定 ###
library(openxlsx)
library(fExtremes)
r.File= "c:/Remi/Remi Moocs/Data/VaR.xlsx"      # 檔案路徑
Sheet = "VaR"                                   # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔
head(XLSX)                                      # 呈現資料前 6 行

### 重新整理資料，還原成 return ###
Data = NULL
for(i in 1:nrow(XLSX)){
   Data = c(Data, rep(XLSX[i, 1], XLSX[i, 2]))
}
head(Data)                                      # 呈現資料前 6 個值

#############################################################################
### 計算 VaR (fExtremes 套件) ###
VaR = VaR(Data, alpha = 0.05)                   # alpha = 5% VaR 
VaR







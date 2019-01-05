### 基本設定 ###
library(openxlsx)

r.File = "C:/Remi/Remi Moocs/Data/Return.xlsx"
Sheet = "Return"                                # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔
Y     = XLSX[, 6]                               # 讀取 Taiwan 資料內容
X     = XLSX[, 5]                               # 讀取 Korea 資料內容
           
#############################################################################
### X-Y 圖形 ###                      
plot(X, Y)

### Y = alpha + beta X + gamma X^2 ### 
regression = lm( Y~X+I(X^2) )
summary(regression)


library(openxlsx)                               # 讀取 Excel 格式資料的套件
r.File= "C:/Remi/Remi Moocs/Data/CreditCards.xlsx"
Sheet = "Data"                                  # 資料表名稱

### 讀取 xlsx 資料 ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # 讀取 xlsx 檔
head(XLSX)                                      # 呈現資料前 6 行


#############################################################################
### xtabs(formula = Values ~ Row + Column., data = parent.frame(), subset) ###
### 事件機率 P(會辦卡) ###
A = xtabs(~ 辦卡, data = XLSX)                  # 事件計數 counting
A                                               
prop.table(A)                                   # 事件相對機率

### 聯合機率 P(女生, 40 歲) ###
# 年紀為 row, 性別為 column
Join = xtabs(~性別 + 年紀, data = XLSX)         # 事件計數 counting
Join
prop.table(Join)

### 條件機率 P(女生 | 會辦卡) ###
Conditional = xtabs(~性別, data = XLSX, subset = (辦卡 == "會"))
Conditional
prop.table(Conditional)


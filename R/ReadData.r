library(readr)                                  # by Hadley Wickham
r.File = "C:/Remi/Remi Moocs/Data/10M.csv"      # 檔案路徑

#############################################################################
### 讀取大量資料 (CSV) 讀取大量資料 (14,270,479 列)。
CSV   = read_csv(r.File, col_names = TRUE)      # 讀取大量資料 (readr 套件)

nrow(CSV)				        # 計算 number of rows



### 比較: 以傳統方式讀取 ###
CSV   = read.csv(r.File, header = TRUE)         # 讀取大量資料 (傳統方式)



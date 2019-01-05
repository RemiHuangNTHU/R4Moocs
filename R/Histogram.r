### 基本設定 ###
r.File = "C:/Remi/Remi Moocs/Data/Cars.csv"     # 設定路徑

### 讀取 CSV 資料 ###
Data  = read.csv(r.File)                        # 讀取 csv 檔
Car   = Data[, 13]                              # 平均油耗在資料的第 13 行
hist(Car)



#############################################################################
library(readr)                                  # by Hadley Wickham
r.File = "C:/Remi/Remi Moocs/Data/10M.csv"      # 檔案路徑

#############################################################################
### 讀取大量資料 (CSV) 讀取大量資料 (14,270,479 列)。
CSV   = read_csv(r.File, col_names = TRUE)      # 讀取大量資料 (readr 套件)


#############################################################################
# 司機的編號 (文字) 在 CSV 第一行的位置
# 畫出司機出勤的相對頻率 (直方圖) 
ID    = CSV[, 1]                                # 截取第一行
Count = table(ID)                               # 計算每個 ID 編號的次數
Freq  = Count/sum(Count)                        # 計算相對頻率
plot(Freq)                                      # 畫出相對頻率圖形  




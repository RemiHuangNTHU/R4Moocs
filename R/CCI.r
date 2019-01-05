library(TTR)                                    # 呼叫 TTR 套件
library(quantmod)                               # quantmod 套件
library(xts)                                    # xts 套件
r.File = "c:/Remi/Remi Moocs/Data/TTrade.csv"   # 檔案的路徑

#############################################################################
CSV    = read.csv(r.File)                       # 讀取 csv 檔
head(CSV)                                       # 呈現前 6 行資料 

CSV[,1]= as.Date(CSV[, 1])                      # 第一行指定為日期格式
Data   = xts(CSV[,-1], order.by = CSV[,1])      # 方便透過 quantmod 套件畫圖
close  = Data[, "Close"]                        # 只用到收盤價

#############################################################################
# CCI: Commodity Channel Index
# 若 CCI 指標超過 100 則買入 (表示後續股價可能有向上趨勢)；回到 100 以內則賣出。
# 若 CCI 指標低於 -100 則放空 (表示後續可能有向下趨勢); 回到 -100 以內則補回。

cci    = CCI(close, n = 15)                     # 透過 TTR 套件計算 CCI
chartSeries(close, theme = "white")             # 透過 quantmod 套件畫出收盤價
addCCI(n = 15)                                  # 透過 quantmod 套件畫出 CCI

head(cci, 30)




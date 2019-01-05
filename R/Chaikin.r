library(TTR)                                    # TTR 套件
r.File = "C:/Remi/Remi Moocs/Data/TTrade.csv"   # 路徑設定

XLSX   = read.csv(r.File)                       # 讀取 csv 檔
close  = XLSX[, "Close"]

#############################################################################
sma    = SMA(close, n= 20)                      # n 日移動平均
head(sma, 30)

ema    = EMA(close, n = 20)
head(ema, 30)

par(mfrow=c(2,1))
plot(sma, type = "l", col = "red")
plot(ema, type = "l", col = "black")


#############################################################################
# Chaikin Volatility
# 當此波動度在低點時 (短期內)，表示高峰已近。
# 當此波動度在高點時 (短期內)，表示谷底已近 (如恐慌性賣壓)。

Data = XLSX[, c("High", "Low")]
chai = chaikinVolatility(Data, n = 15)
head(chai, 50)



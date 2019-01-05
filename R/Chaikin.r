library(TTR)                                    # TTR �M��
r.File = "C:/Remi/Remi Moocs/Data/TTrade.csv"   # ���|�]�w

XLSX   = read.csv(r.File)                       # Ū�� csv ��
close  = XLSX[, "Close"]

#############################################################################
sma    = SMA(close, n= 20)                      # n �鲾�ʥ���
head(sma, 30)

ema    = EMA(close, n = 20)
head(ema, 30)

par(mfrow=c(2,1))
plot(sma, type = "l", col = "red")
plot(ema, type = "l", col = "black")


#############################################################################
# Chaikin Volatility
# ���i�ʫצb�C�I�� (�u����)�A��ܰ��p�w��C
# ���i�ʫצb���I�� (�u����)�A��ܨ����w�� (�p���W�ʽ���)�C

Data = XLSX[, c("High", "Low")]
chai = chaikinVolatility(Data, n = 15)
head(chai, 50)



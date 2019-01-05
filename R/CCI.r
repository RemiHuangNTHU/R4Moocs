library(TTR)                                    # �I�s TTR �M��
library(quantmod)                               # quantmod �M��
library(xts)                                    # xts �M��
r.File = "c:/Remi/Remi Moocs/Data/TTrade.csv"   # �ɮת����|

#############################################################################
CSV    = read.csv(r.File)                       # Ū�� csv ��
head(CSV)                                       # �e�{�e 6 ���� 

CSV[,1]= as.Date(CSV[, 1])                      # �Ĥ@����w������榡
Data   = xts(CSV[,-1], order.by = CSV[,1])      # ��K�z�L quantmod �M��e��
close  = Data[, "Close"]                        # �u�Ψ즬�L��

#############################################################################
# CCI: Commodity Channel Index
# �Y CCI ���жW�L 100 �h�R�J (��ܫ���ѻ��i�঳�V�W�Ͷ�)�F�^�� 100 �H���h��X�C
# �Y CCI ���ЧC�� -100 �h��� (��ܫ���i�঳�V�U�Ͷ�); �^�� -100 �H���h�ɦ^�C

cci    = CCI(close, n = 15)                     # �z�L TTR �M��p�� CCI
chartSeries(close, theme = "white")             # �z�L quantmod �M��e�X���L��
addCCI(n = 15)                                  # �z�L quantmod �M��e�X CCI

head(cci, 30)




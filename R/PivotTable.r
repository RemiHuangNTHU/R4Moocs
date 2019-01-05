library(rpivotTable)                            # rpivotTable 套件

### 基本設定 ###
r.File = "C:/Remi/Remi Moocs/Data/Cars.csv"     # 設定檔案路徑
CSV    = read.csv(r.File)                       # 讀取 csv 檔

### 利用 rpivotTable 套件 ###
rpivotTable(CSV)                                # 進行 pivotal analysis

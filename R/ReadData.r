library(readr)                                  # by Hadley Wickham
r.File = "C:/Remi/Remi Moocs/Data/10M.csv"      # �ɮ׸��|

#############################################################################
### Ū���j�q��� (CSV) Ū���j�q��� (14,270,479 �C)�C
CSV   = read_csv(r.File, col_names = TRUE)      # Ū���j�q��� (readr �M��)

nrow(CSV)				        # �p�� number of rows



### ���: �H�ǲΤ覡Ū�� ###
CSV   = read.csv(r.File, header = TRUE)         # Ū���j�q��� (�ǲΤ覡)



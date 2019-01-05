library(openxlsx)                               # Ū�� Excel �榡��ƪ��M��
r.File= "C:/Remi/Remi Moocs/Data/CreditCards.xlsx"
Sheet = "Data"                                  # ��ƪ�W��

### Ū�� xlsx ��� ###
XLSX  = read.xlsx(r.File, sheet = Sheet)        # Ū�� xlsx ��
head(XLSX)                                      # �e�{��ƫe 6 ��


#############################################################################
### xtabs(formula = Values ~ Row + Column., data = parent.frame(), subset) ###
### �ƥ���v P(�|��d) ###
A = xtabs(~ ��d, data = XLSX)                  # �ƥ�p�� counting
A                                               
prop.table(A)                                   # �ƥ�۹���v

### �p�X���v P(�k��, 40 ��) ###
# �~���� row, �ʧO�� column
Join = xtabs(~�ʧO + �~��, data = XLSX)         # �ƥ�p�� counting
Join
prop.table(Join)

### ������v P(�k�� | �|��d) ###
Conditional = xtabs(~�ʧO, data = XLSX, subset = (��d == "�|"))
Conditional
prop.table(Conditional)


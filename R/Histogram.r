### �򥻳]�w ###
r.File = "C:/Remi/Remi Moocs/Data/Cars.csv"     # �]�w���|

### Ū�� CSV ��� ###
Data  = read.csv(r.File)                        # Ū�� csv ��
Car   = Data[, 13]                              # �����o�Ӧb��ƪ��� 13 ��
hist(Car)



#############################################################################
library(readr)                                  # by Hadley Wickham
r.File = "C:/Remi/Remi Moocs/Data/10M.csv"      # �ɮ׸��|

#############################################################################
### Ū���j�q��� (CSV) Ū���j�q��� (14,270,479 �C)�C
CSV   = read_csv(r.File, col_names = TRUE)      # Ū���j�q��� (readr �M��)


#############################################################################
# �q�����s�� (��r) �b CSV �Ĥ@�檺��m
# �e�X�q���X�Ԫ��۹��W�v (�����) 
ID    = CSV[, 1]                                # �I���Ĥ@��
Count = table(ID)                               # �p��C�� ID �s��������
Freq  = Count/sum(Count)                        # �p��۹��W�v
plot(Freq)                                      # �e�X�۹��W�v�ϧ�  




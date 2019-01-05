### ������� Likelihood Function  ###
example = function(mu){
             beta = mu
             sin(cos(beta)*exp(beta/2))
          }
curve(example, from = -8, to = 4 )

#############################################################################
### optim �O�D���p�� (�D���j�Ȯ�, fnscale = -1) ###
initial = 0                                     # initial value = 0
result0 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result0

#############################################################################
### ���Ȩ� initial values �v�T�ܤj ###
initial = 3                                     # initial value = 3
result3 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result3


#############################################################################
### ���Ȩ� initial values �v�T�ܤj ###
initial = -3                                    # initial value = -3
result_3 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result_3



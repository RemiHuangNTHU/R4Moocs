### 概似函數 Likelihood Function  ###
example = function(mu){
             beta = mu
             sin(cos(beta)*exp(beta/2))
          }
curve(example, from = -8, to = 4 )

#############################################################################
### optim 是求極小值 (求極大值時, fnscale = -1) ###
initial = 0                                     # initial value = 0
result0 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result0

#############################################################################
### 極值受 initial values 影響很大 ###
initial = 3                                     # initial value = 3
result3 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result3


#############################################################################
### 極值受 initial values 影響很大 ###
initial = -3                                    # initial value = -3
result_3 = optim(initial, example, method = "BFGS", control=list(fnscale=-1))
result_3



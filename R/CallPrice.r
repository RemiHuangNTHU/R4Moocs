### Call price calculation: Simulation ###
n.path = 1000000                                # 模擬樣本 path 的次數; number of paths
S0     = 100                                    # 現貨價格: price of underlying asset
T      = 1                                      # Time to Maturity: 1 指 1 年, 0.5 指半年, 1/12 指 1 個月
Rf     = 0.05                                   # 無風險利率 (年): annual risk free rate, r; 0.1 = 10%, 0.05 = 5%
Sigma  = 0.25                                   # 波動度: annual standard deviation of underlying asset; 0.3 = 30%, 0.25 = 25%
K      = 110

ST = rep(0, n.path)                             # 一開始到期日股價均為 0
set.seed(12)                                    # 為了教學, 大家要有一致的模擬結果, 真正模擬時，這一個指令要刪掉
epsilon = rnorm(n.path)                         # 從 N(0, 1) 中抽取出 1,000,000 個樣本點

for(i in 1:n.path){
   ST[i] = S0 * exp( (Rf-0.5*Sigma^2)*T + Sigma*epsilon[i]*sqrt(T) )
}

payoff = pmax(0, ST - K)                        # Call 的 payoff
call.sim = exp(-Rf*T)*mean(payoff)              # 平均 payoff 折現
call.sim

### Based on Black Scholes Formula: call price = 8.026371 



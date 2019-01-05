### Call price calculation: Simulation ###
n.path = 1000000                                # �����˥� path ������; number of paths
S0     = 100                                    # �{�f����: price of underlying asset
T      = 1                                      # Time to Maturity: 1 �� 1 �~, 0.5 ���b�~, 1/12 �� 1 �Ӥ�
Rf     = 0.05                                   # �L���I�Q�v (�~): annual risk free rate, r; 0.1 = 10%, 0.05 = 5%
Sigma  = 0.25                                   # �i�ʫ�: annual standard deviation of underlying asset; 0.3 = 30%, 0.25 = 25%
K      = 110

ST = rep(0, n.path)                             # �@�}�l�����ѻ����� 0
set.seed(12)                                    # ���F�о�, �j�a�n���@�P���������G, �u�������ɡA�o�@�ӫ��O�n�R��
epsilon = rnorm(n.path)                         # �q N(0, 1) ������X 1,000,000 �Ӽ˥��I

for(i in 1:n.path){
   ST[i] = S0 * exp( (Rf-0.5*Sigma^2)*T + Sigma*epsilon[i]*sqrt(T) )
}

payoff = pmax(0, ST - K)                        # Call �� payoff
call.sim = exp(-Rf*T)*mean(payoff)              # ���� payoff ��{
call.sim

### Based on Black Scholes Formula: call price = 8.026371 



class ContaBancaria:
    def __init__(self, titular, saldo):
        self.titular = titular
        self.saldo = saldo
    
    def exibirSaldos (self):
        print(f"O saldo atual da conta bancaria de {self.titular} é de {self.saldo}.")
        
cliente1 = ContaBancaria("Rogério", 51231)
cliente2 = ContaBancaria("Tiago", 532)

while True:
    acesso = str(input("Seja bem vindo ao banco! Deseja acessar qual cliente? "))
    if acesso == "1":
        cliente1.exibirSaldos()
        
    elif acesso == "2":
        cliente2.exibirSaldos()
        
    elif acesso == "exit":
        break
import mysql.connector

host = "167.99.252.245"
user = "ESW2024_E7"
passwd = "123mudar"
database = "ESW2024_E7"

conector = mysql.connector.connect(host=host, user=user, passwd=passwd, database=database)

cursor = conector.cursor()

def inserirTabela():
    tabela = ''
    add = 'S'
    var = 0
    while (tabela != "0"):
        nomeDaTabela = input("Qual o nome da tabela que você quer criar? >>> ")
        cursor.execute("CREATE TABLE " + nomeDaTabela + " (ID INT AUTO_INCREMENT PRIMARY KEY);")
        while (add == "S"):
            add = input("Você deseja adicionar uma variável? (S/N) >>> ").upper()
            if (add == "S"):
                var = var + 1
                variavelNome = input("Digite o nome da " + str(var) + "a. variável? >>> ")
                variavelTipo = input("Digite o tipo da " + str(var) + "a. variável? >>> ")
                cursor.execute("ALTER TABLE " + nomeDaTabela + " ADD " + variavelNome + " " + variavelTipo + ";")
            
            elif (add == "N" or add == "n"):
                tabela = "0"
                break
        
inserirTabela()
            
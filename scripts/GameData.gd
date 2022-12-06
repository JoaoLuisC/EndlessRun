extends Node

const NOME_ARQUIVO = "user://gamedata.json"

func criar_arquivo():
	var arquivo = File.new()
	
	if arquivo.file_exists(NOME_ARQUIVO):
		return
	arquivo.open(NOME_ARQUIVO, File.WRITE)
	
	var data = {
		telacheia = 0,
		musica = 1,
		sons = 1,
		recorde = 0,
		ultima_pontuacao = 0
	}
	
	var json = to_json(data)
	arquivo.store_line(json)
	arquivo.close()

func abrir_arquivo():
	var arquivo = File.new()
	arquivo.open(NOME_ARQUIVO,File.READ)
	
	var json =JSON.parse(arquivo.get_as_text())
	
	arquivo.close()
	
	var data = json.result
	return data
	
func salvar_arquivo(data):
	
	var arquivo = File.new()
	
	arquivo.open(NOME_ARQUIVO,File.WRITE)
	
	var json = to_json(data)
	
	arquivo.store_line(json)
	
	arquivo.close()
	
func pega_valor(campo):
	
	var data = abrir_arquivo()
	
	return data[campo]
	
func altera_valor(campo,valor):
	var data = abrir_arquivo()
	
	data[campo] = valor
	
	salvar_arquivo(data)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

require 'pp' #pretty printed output...wow

json = File.read('sp_wm_persona.json')
empls = JSON.parse(json)

pp empls
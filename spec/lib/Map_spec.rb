require './lib/Map.rb'

describe Map do
    before (:each) do
        @map=Map.new
    end
    it "Si añado una cueva en la posicion 0,1 y en esa posicion no hay cueva deberia mostrarme el mensaje Cueva añadida" do
        expect(@map.CreateCave(0, 1)).to eq "Cueva añadida"
    end
    it "Si añado otra cueva en la posicion 0,1 y en esa posicion hay cueva deberia mostrarme el mensaje Ya existe una cueva" do
        @map.CreateCave(0, 1)
        expect(@map.CreateCave(0, 1)).to eq "Ya existe una cueva"
    end
    it "Si añado una cueva en la posicion 0,1 y le asigno el monstruo y no se ha añadido uno antes muestra el mensaje Monstruo agregado" do
        @map.CreateCave(0, 1)
        expect(@map.SetStartMonsterPos(0, 1)).to eq "Monstruo agregado"
    end
    it "Si añado una cueva en la posicion 0,1 y asigno a ella el personaje deberia mostrar Personaje agregado" do
        @map.CreateCave(0, 1)
        expect(@map.SetStartPersonPos(0, 1)).to eq "Personaje agregado"
    end
   
end
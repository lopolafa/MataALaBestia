require './lib/Cave.rb'


describe Cave do
    before (:each) do
        @cave=Cave.new
    end
    it "Si escribo true en la puerta norte y verifico si la puerta norte esta disponible deberia devolver true" do
        @cave.ShowDoorNorth(true)
        expect(@cave.IsAvaiableDoorNorth).to eq true
    end
    it "Si escribo true en la puerta sud y verifico si la puerta sud esta disponible deberia devolver true" do
        @cave.ShowDoorSouth(true)
        expect(@cave.IsAvaiableDoorSouth).to eq true
    end
    it "Si escribo true en la puerta este y verifico si la puerta este esta disponible deberia devolver true" do
        @cave.ShowDoorEast(true)
        expect(@cave.IsAvaiableDoorEast).to eq true
    end
    it "Si escribo true en la puerta oeste y verifico si la puerta oeste esta disponible deberia devolver true" do
        @cave.ShowDoorWest(true)
        expect(@cave.IsAvaiableDoorWest).to eq true
    end
    it "Asigno 3 flechas a cueva debe mostrar el mensaje 3 Flechas añadidas" do
        expect(@cave.AddArrow(3)).to eq "3 Flechas añadidas"
    end
    it "Asigno 3 sprays a cueva debe mostrar el mensaje 3 Sprays añadidas" do
        expect(@cave.AddSpray(3)).to eq "3 Sprays añadidas"
    end
    
    it "Asigno numero 1 a cueva y muestro numero de cueva deberia devolver Cueva #1" do
        @cave.AddNumberOfCave(1)
        expect(@cave.GetNumber).to eq 1
    end
    it "Asigno 3 flechas a la cueva y pido las flechas deberia devolverme 3" do
        @cave.AddArrow(3)
        expect(@cave.PickUpArrows()).to eq 3
    end
    it "Asigno 3 sprays a la cueva y pido los sprays deberia devolverme 3" do
        @cave.AddSpray(3)
        expect(@cave.PickUpSprays()).to eq 3
    end
end




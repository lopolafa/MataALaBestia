require './lib/Game.rb'

describe Game do
    before (:each) do
       @game=Game.new
    end

    it "Si el personaje se movio a la posicion 0,1(cueva 2) deberia mostrar Estas en la cueva Nº 2" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.ShowActualNumberOfCave()).to eq 2
    end
    it "Si el personaje se movio a la posicion 0,1(cueva 2) y encontro 3 flechas deberia tener 3 flechas en su inventario" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.QuantityArrows()).to eq 3
    end
    it "Si el personaje se movio a la posicion 0,1(cueva 2) y encontro 3 Sprays deberia tener 3 sprays en su inventario" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.QuantitySprays()).to eq 3
    end
    it "Si cargo el mapa por defecto y hay una cueva en la posicion 0,1 y verifico si existe una cueva en esa posicion deberia devolver true" do
        @game.StartDefault()
        expect(@game.ThisPositionHasCave(0, 1)).to eq true
    end
    it "Si inicio mapa por defecto, hay un monstruo en la posicion 3,3 y se mueve el personaje el monstruo debe estar en otra posicion" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.MoveMonster()).not_to eq [3,3]
    end
    it "Si inicio mapa por defecto, hay un Murcielago en la posicion 3,3 y se mueve el personaje por 3 turnos,el monstruo debe estar en otra posicion" do
        @game.StartDefault()
        @game.MovePerson("sud")
        @game.MovePerson("sud")
        @game.MovePerson("sud")
        expect(@game.MoveMonster()).not_to eq [3,3]
    end
    it "Si la posicion 0 1 esta la persona y en la posicion 0 2 esta el murcielago, deberia mostrar true" do
        @game.StartDefault()
        @game.setPosBat(0,2)
        @game.setPosPerson(0,1)
        expect(@game.IsBatIsNearOfPerson).to eq true
    end
    it "Si la posicion 0 1 esta la persona y en la posicion 0 2 esta el pozo, deberia mostrar true" do
        @game.StartDefault()
        @game.setPosWaterWell(0,2)
        @game.setPosPerson(0,1)
        expect(@game.IsNearTheWeaterWell).to eq true
    end
   
    
    
    it "Si inicio mapa por defecto, y obtengo la posicion del personaje deberia mostrarme [0,0]"do
        @game.StartDefault()
        expect(@game.GetPositionOfPerson()).to eq [0,0]
    end
    it "Si inicio mapa por defecto y quiero saber si tengo flechas y no tengo deberia devolver false"do
        @game.StartDefault()
        expect(@game.HasArrows()).to eq false
    end
    it "Si inicio mapa por defecto y quiero saber si tengo sprays y no tengo deberia devolver false"do
    @game.StartDefault()
    expect(@game.HasSprays()).to eq false
    end
    it "Si inicio mapa por defecto y quiero saber si tengo monedas, deberia devolver 0"do
    @game.StartDefault()
    expect(@game.GetCoins()).to eq 0
    end
    
    it "Si inicio mapa por defecto y quiero saber si el monstruo y los murcielagos se mueven devuelve true" do
        @game.StartDefault()
        expect(@game.theMovementIsActivated()).to eq true
    end
    it "Si inicio mapa por defecto, cambio el movimiento a false y quiero saber si el monstruo y los murcielagos se mueven devuelve false" do
        @game.StartDefault()
        @game.changeMovement(false)
        expect(@game.theMovementIsActivated()).to eq false
    end
    it "Si inicio mapa por defecto, los murcielagos comienzan en la posicion 0, 3 y hago mas de 10 movimientos la posicion de los muercielagos deberia ser diferente a 0,3" do
    @game.StartDefault()
    @game.MovePerson("sud")
    @game.MovePerson("norte")
    @game.MovePerson("sud")
    @game.MovePerson("norte")
    @game.MovePerson("sud")
    @game.MovePerson("norte")
    @game.MovePerson("sud")
    @game.MovePerson("norte")
    expect(@game.getPosBat()).not_to eq [0, 3]
    end
end

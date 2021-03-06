Given("Visito la pagina de inicio") do
        visit '/'
  end
Given("Visito la pagina del juego") do
    visit '/Juego'
end

  Then("deberia mostrar el boton {string}")do |string|
    last_response.body.should =~ /#{string}/m
  end
  When("presiono el boton {string}") do |string|
    click_button(string)
  end
  
  Then("Deberia mostrarme la pagina del juego") do
    visit '/Juego'
  end
  Then("deberia mostrar el mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  Then("Si la cueva solo tiene acceso a la cueva sud deberia mostrar boton {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  When("muestre el mensaje {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  When("Presiono el boton {string} y en esa cueva hay {int} flechas") do |string, int|
    click_button(string)
  end
  Then("en la pagina del juego deberia mostrarme el mensaje {string}") do |string|
    visit '/Juego'
    last_response.body.should =~ /#{string}/m
  end
  When("habilito la opcion de {string}") do |string|
    check(string)
  end
  

  Given("Visito la pagina del juego y hay un pozo cerca") do
    visit '/Juego'
  end
  Then("Deberia mostrarme la pantalla principal") do
    visit '/'
  end
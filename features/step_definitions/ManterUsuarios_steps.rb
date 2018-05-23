Dado("que eu esteja no site da OrangeHRM") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button id="btnLogin"
end

Quando("eu acessar a tela de add employee") do
  click_link id="menu_pim_viewPimModule"
  click_link id="menu_pim_addEmployee"
end

Então("um novo empregado será cadastrado") do
  fill_in "firstName", :with => 'Ana'
  fill_in "middleName", :with => 'Cláudia'
  fill_in "lastName", :with => 'Menezes'
  click_button id="btnSave"
end

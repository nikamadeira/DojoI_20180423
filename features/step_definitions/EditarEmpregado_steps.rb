Dado("que eu esteja logada no site da OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in "txtUsername", :with => "admin"
  fill_in "txtPassword", :with => "admin"
  click_button id="btnLogin"
end

Quando("eu acessar a tela de empregados") do
  click_link id="menu_pim_viewPimModule"
  click_link id="menu_pim_viewEmployeeList"
end

Então("irei buscar um empregado cadastrado") do
  find(:xpath,'//*[@id="resultTable"]/tbody/tr[1]/td[2]/a').click
  click_button id="btnSave"
end

Então("editarei seus dados") do
  fill_in "personal_txtLicenNo", :with => "986845"
  click_button id="btnSave"
  has_content?("Successfully Saved")
end
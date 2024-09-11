require "application_system_test_case"

class EstsTest < ApplicationSystemTestCase
  setup do
    @est = ests(:one)
  end

  test "visiting the index" do
    visit ests_url
    assert_selector "h1", text: "Ests"
  end

  test "should create est" do
    visit ests_url
    click_on "New est"

    fill_in "Apellidos", with: @est.apellidos
    fill_in "Carnet", with: @est.carnet
    fill_in "Carrera", with: @est.carrera
    fill_in "Celular", with: @est.celular
    fill_in "Nacimiento", with: @est.nacimiento
    fill_in "Nombres", with: @est.nombres
    click_on "Create Est"

    assert_text "Est was successfully created"
    click_on "Back"
  end

  test "should update Est" do
    visit est_url(@est)
    click_on "Edit this est", match: :first

    fill_in "Apellidos", with: @est.apellidos
    fill_in "Carnet", with: @est.carnet
    fill_in "Carrera", with: @est.carrera
    fill_in "Celular", with: @est.celular
    fill_in "Nacimiento", with: @est.nacimiento
    fill_in "Nombres", with: @est.nombres
    click_on "Update Est"

    assert_text "Est was successfully updated"
    click_on "Back"
  end

  test "should destroy Est" do
    visit est_url(@est)
    click_on "Destroy this est", match: :first

    assert_text "Est was successfully destroyed"
  end
end

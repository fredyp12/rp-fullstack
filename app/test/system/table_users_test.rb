require "application_system_test_case"

class TableUsersTest < ApplicationSystemTestCase
  setup do
    @table_user = table_users(:one)
  end

  test "visiting the index" do
    visit table_users_url
    assert_selector "h1", text: "Table Users"
  end

  test "creating a Table user" do
    visit table_users_url
    click_on "New Table User"

    fill_in "Direccion", with: @table_user.direccion
    fill_in "Documento", with: @table_user.documento
    fill_in "Email", with: @table_user.email
    fill_in "Name", with: @table_user.name
    fill_in "Ocupacion", with: @table_user.ocupacion
    click_on "Create Table user"

    assert_text "Table user was successfully created"
    click_on "Back"
  end

  test "updating a Table user" do
    visit table_users_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @table_user.direccion
    fill_in "Documento", with: @table_user.documento
    fill_in "Email", with: @table_user.email
    fill_in "Name", with: @table_user.name
    fill_in "Ocupacion", with: @table_user.ocupacion
    click_on "Update Table user"

    assert_text "Table user was successfully updated"
    click_on "Back"
  end

  test "destroying a Table user" do
    visit table_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Table user was successfully destroyed"
  end
end

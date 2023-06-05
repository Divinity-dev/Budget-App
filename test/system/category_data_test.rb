require 'application_system_test_case'

class CategoryDataTest < ApplicationSystemTestCase
  setup do
    @category_datum = category_data(:one)
  end

  test 'visiting the index' do
    visit category_data_url
    assert_selector 'h1', text: 'Category data'
  end

  test 'should create category datum' do
    visit category_data_url
    click_on 'New category datum'

    fill_in 'Category', with: @category_datum.category_id
    fill_in 'Data', with: @category_datum.data_id
    click_on 'Create Category datum'

    assert_text 'Category datum was successfully created'
    click_on 'Back'
  end

  test 'should update Category datum' do
    visit category_datum_url(@category_datum)
    click_on 'Edit this category datum', match: :first

    fill_in 'Category', with: @category_datum.category_id
    fill_in 'Data', with: @category_datum.data_id
    click_on 'Update Category datum'

    assert_text 'Category datum was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Category datum' do
    visit category_datum_url(@category_datum)
    click_on 'Destroy this category datum', match: :first

    assert_text 'Category datum was successfully destroyed'
  end
end

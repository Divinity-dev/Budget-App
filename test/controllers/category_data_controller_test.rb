require 'test_helper'

class CategoryDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category_datum = category_data(:one)
  end

  test 'should get index' do
    get category_data_url
    assert_response :success
  end

  test 'should get new' do
    get new_category_datum_url
    assert_response :success
  end

  test 'should create category_datum' do
    assert_difference('CategoryDatum.count') do
      post category_data_url,
           params: { category_datum: { category_id: @category_datum.category_id, data_id: @category_datum.data_id } }
    end

    assert_redirected_to category_datum_url(CategoryDatum.last)
  end

  test 'should show category_datum' do
    get category_datum_url(@category_datum)
    assert_response :success
  end

  test 'should get edit' do
    get edit_category_datum_url(@category_datum)
    assert_response :success
  end

  test 'should update category_datum' do
    patch category_datum_url(@category_datum),
          params: { category_datum: { category_id: @category_datum.category_id, data_id: @category_datum.data_id } }
    assert_redirected_to category_datum_url(@category_datum)
  end

  test 'should destroy category_datum' do
    assert_difference('CategoryDatum.count', -1) do
      delete category_datum_url(@category_datum)
    end

    assert_redirected_to category_data_url
  end
end

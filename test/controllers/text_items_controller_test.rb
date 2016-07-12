require 'test_helper'

class TextItemsControllerTest < ActionController::TestCase
  setup do
    @text_item = text_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:text_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create text_item" do
    assert_difference('TextItem.count') do
      post :create, text_item: { contacto: @text_item.contacto, elegirnos: @text_item.elegirnos, nosotros: @text_item.nosotros, quehacemos: @text_item.quehacemos }
    end

    assert_redirected_to text_item_path(assigns(:text_item))
  end

  test "should show text_item" do
    get :show, id: @text_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @text_item
    assert_response :success
  end

  test "should update text_item" do
    patch :update, id: @text_item, text_item: { contacto: @text_item.contacto, elegirnos: @text_item.elegirnos, nosotros: @text_item.nosotros, quehacemos: @text_item.quehacemos }
    assert_redirected_to text_item_path(assigns(:text_item))
  end

  test "should destroy text_item" do
    assert_difference('TextItem.count', -1) do
      delete :destroy, id: @text_item
    end

    assert_redirected_to text_items_path
  end
end

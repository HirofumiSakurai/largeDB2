require 'test_helper'

class KineControllerTest < ActionController::TestCase
  setup do
    @cow = kine(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kine)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cow" do
    assert_difference('Cow.count') do
      post :create, cow: { birth: @cow.birth, ear: @cow.ear, name: @cow.name, owner_id: @cow.owner_id, t01: @cow.t01, t02: @cow.t02, t03: @cow.t03, t04: @cow.t04, t05: @cow.t05, t06: @cow.t06, t07: @cow.t07, t08: @cow.t08, t09: @cow.t09, t10: @cow.t10, t11: @cow.t11, t12: @cow.t12, t13: @cow.t13, t14: @cow.t14, t15: @cow.t15, t16: @cow.t16, t17: @cow.t17, t18: @cow.t18, t19: @cow.t19, t20: @cow.t20, t21: @cow.t21, t22: @cow.t22, t23: @cow.t23, t24: @cow.t24, t25: @cow.t25, t26: @cow.t26, t27: @cow.t27, t28: @cow.t28, t29: @cow.t29, t30: @cow.t30, t31: @cow.t31, t32: @cow.t32, t33: @cow.t33, t34: @cow.t34, t35: @cow.t35, t36: @cow.t36, t37: @cow.t37, t38: @cow.t38, t39: @cow.t39, t40: @cow.t40, t41: @cow.t41, t42: @cow.t42, t43: @cow.t43, t44: @cow.t44, t45: @cow.t45, t46: @cow.t46, t47: @cow.t47, t48: @cow.t48, t49: @cow.t49, t50: @cow.t50, t51: @cow.t51, t52: @cow.t52, t53: @cow.t53, t54: @cow.t54, t55: @cow.t55, t56: @cow.t56, t57: @cow.t57, t58: @cow.t58, t59: @cow.t59, t60: @cow.t60, t61: @cow.t61, t62: @cow.t62, t63: @cow.t63, t64: @cow.t64, t65: @cow.t65, t66: @cow.t66, t67: @cow.t67, t68: @cow.t68, t69: @cow.t69, t70: @cow.t70, t71: @cow.t71, t72: @cow.t72, t73: @cow.t73, t74: @cow.t74, t75: @cow.t75, t76: @cow.t76, t77: @cow.t77, t78: @cow.t78, t79: @cow.t79, t80: @cow.t80, t81: @cow.t81, t82: @cow.t82, t83: @cow.t83, t84: @cow.t84, t85: @cow.t85, t86: @cow.t86, t87: @cow.t87, t88: @cow.t88, t89: @cow.t89, t90: @cow.t90, t91: @cow.t91, t92: @cow.t92, t93: @cow.t93, t94: @cow.t94, t95: @cow.t95, t96: @cow.t96, t97: @cow.t97, t98: @cow.t98, t99: @cow.t99 }
    end

    assert_redirected_to cow_path(assigns(:cow))
  end

  test "should show cow" do
    get :show, id: @cow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cow
    assert_response :success
  end

  test "should update cow" do
    patch :update, id: @cow, cow: { birth: @cow.birth, ear: @cow.ear, name: @cow.name, owner_id: @cow.owner_id, t01: @cow.t01, t02: @cow.t02, t03: @cow.t03, t04: @cow.t04, t05: @cow.t05, t06: @cow.t06, t07: @cow.t07, t08: @cow.t08, t09: @cow.t09, t10: @cow.t10, t11: @cow.t11, t12: @cow.t12, t13: @cow.t13, t14: @cow.t14, t15: @cow.t15, t16: @cow.t16, t17: @cow.t17, t18: @cow.t18, t19: @cow.t19, t20: @cow.t20, t21: @cow.t21, t22: @cow.t22, t23: @cow.t23, t24: @cow.t24, t25: @cow.t25, t26: @cow.t26, t27: @cow.t27, t28: @cow.t28, t29: @cow.t29, t30: @cow.t30, t31: @cow.t31, t32: @cow.t32, t33: @cow.t33, t34: @cow.t34, t35: @cow.t35, t36: @cow.t36, t37: @cow.t37, t38: @cow.t38, t39: @cow.t39, t40: @cow.t40, t41: @cow.t41, t42: @cow.t42, t43: @cow.t43, t44: @cow.t44, t45: @cow.t45, t46: @cow.t46, t47: @cow.t47, t48: @cow.t48, t49: @cow.t49, t50: @cow.t50, t51: @cow.t51, t52: @cow.t52, t53: @cow.t53, t54: @cow.t54, t55: @cow.t55, t56: @cow.t56, t57: @cow.t57, t58: @cow.t58, t59: @cow.t59, t60: @cow.t60, t61: @cow.t61, t62: @cow.t62, t63: @cow.t63, t64: @cow.t64, t65: @cow.t65, t66: @cow.t66, t67: @cow.t67, t68: @cow.t68, t69: @cow.t69, t70: @cow.t70, t71: @cow.t71, t72: @cow.t72, t73: @cow.t73, t74: @cow.t74, t75: @cow.t75, t76: @cow.t76, t77: @cow.t77, t78: @cow.t78, t79: @cow.t79, t80: @cow.t80, t81: @cow.t81, t82: @cow.t82, t83: @cow.t83, t84: @cow.t84, t85: @cow.t85, t86: @cow.t86, t87: @cow.t87, t88: @cow.t88, t89: @cow.t89, t90: @cow.t90, t91: @cow.t91, t92: @cow.t92, t93: @cow.t93, t94: @cow.t94, t95: @cow.t95, t96: @cow.t96, t97: @cow.t97, t98: @cow.t98, t99: @cow.t99 }
    assert_redirected_to cow_path(assigns(:cow))
  end

  test "should destroy cow" do
    assert_difference('Cow.count', -1) do
      delete :destroy, id: @cow
    end

    assert_redirected_to kine_path
  end
end

require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "no creation if user info invalid" do
     get signup_path
     assert_no_difference 'User.count' do
       post users_path, user: { name: "",
                                email: "user@invalid",
                                password: "foo",
                                password_confirmation: "bar" }
      end
      assert_template 'users/new'
  end
  
  test "creation if user info valid" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name: "Example User",
                                            email: "email@example.com",
                                            password: "password",
                                            password_confirmation: "password" }
    end
    assert_template 'users/show'
  end
end

require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    # assert_select "a[href=?]":特定のリンクが存在するかaタグとhref属性を指定して調べる
    # count: 2 :1つはロゴに、もう1つはナビゲーションバーにリンクがある
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    # <a href="/about">...</a>
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    get contact_path
    assert_select "title", full_title("Contact")
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end

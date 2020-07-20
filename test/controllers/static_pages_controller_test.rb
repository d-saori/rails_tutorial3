require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # 各テストが実行される直前で実行されるメソッド
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # Homeページのテスト
  test "should get home" do
    # GETリクエストをhomeアクションに対して発行 (=送信) せよ
    get static_pages_home_url
    # そうすれば、リクエストに対するレスポンスは[成功]になるはず
    assert_response :success
    # <title>タグ内に『Home | Ruby on Rails Tutorial Sample App』という文字列があるかどうかをチェック
    # assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    # assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    # assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    assert_select "title", "About | #{@base_title}"
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  # 各テストが実行される直前で実行されるメソッド
  # def setup
  #   @base_title = "Ruby on Rails Tutorial Sample App"
  # end

  # test "should get root" do
  #   get root_url
  #   assert_response :success
  # end

  # Homeページのテスト
  test "should get home" do
    # GETリクエストをhomeアクションに対して発行 (=送信) せよ
    # get static_pages_home_url
    get root_path
    # そうすれば、リクエストに対するレスポンスは[成功]になるはず
    assert_response :success
    # <title>タグ内に『Home | Ruby on Rails Tutorial Sample App』という文字列があるかどうかをチェック
    # assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
    # assert_select "title", "Home | #{@base_title}"
    # full_titleヘルパーを定義したので、Homeページにこれまで表示されていた余分な「Home」という単語を表示せず、基本タイトルのみを正しく表示する事もできるようになった。"Home"という文字を表示されていないことを確認するテスト。
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    # assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
    # assert_select "title", "Help | #{@base_title}"
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    # assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    # assert_select "title", "About | #{@base_title}"
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    # assert_select "title", "Contact | #{@base_title}"
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end
end

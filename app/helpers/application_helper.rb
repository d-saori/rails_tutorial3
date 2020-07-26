module ApplicationHelper

  # ページごとの完全なタイトルを返す
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    # empty?:文字列が空(長さ0)の時、真を返す
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end

module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
  end

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
end

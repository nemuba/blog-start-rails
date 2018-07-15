module ApplicationHelper
  def title(page_title)
    content_for :title, page_title.to_s
  end

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when 'success'
      'alert-success' # Green
    when 'error'
      'alert-danger' # Red
    when 'alert'
      'alert-warning' # Yellow
    when 'notice'
      'alert-info' # Blue
    else
      flash_type.to_s
    end
  end
end

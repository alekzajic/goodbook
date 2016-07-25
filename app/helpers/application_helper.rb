module ApplicationHelper

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end

  def request_controller
    params[:controller]
  end

  def request_action
    params[:action]
  end

  def request_model
    @request_model
  end

  def request_model=(value)
    @request_model = value
  end

end
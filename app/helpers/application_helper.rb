module ApplicationHelper

  def session_nav
    if current_user
      render "layouts/loged"
    else
      render "layouts/login"
    end
  end

end

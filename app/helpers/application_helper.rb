module ApplicationHelper

  def session_nav
    if current_user
      render "layouts/loged"
    else
      render "layouts/login"
    end
  end

  def show_new_review
    if current_user
      render "review"
    end
  end

end

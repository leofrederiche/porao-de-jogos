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

  def card_rank(rank)
    case rank
      when 0
        "gold"
      when 1
        "silver"
      when 2
        "bronze"
      end
  end

end

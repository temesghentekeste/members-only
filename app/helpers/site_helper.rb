module SiteHelper
  def member_or_guest
    if user_signed_in?
      render '/layouts/member_menu'
    else
      render '/layouts/guest_menu'
    end
  end

  def member_or_guest_action
    if user_signed_in?
      render '/layouts/member_action'
    else
      render '/layouts/guest_action'
    end
  end

  def flash_message(name)
    if name == 'notice'
      render 'layouts/notice'
    elsif name == 'alert'
      render 'layouts/alert'
    end
  end

  def welcome
    if user_signed_in?
      flash[:notice] = "You are successfully signen in #{current_user.name}"
      controller.redirect_to posts_path
    else
      render 'home/welcome'
    end
  end

  def post_info(post)
    if user_signed_in?
      render 'shared/member_info', post: post
    else
      render 'shared/guest_info', post: post
    end
  end
end

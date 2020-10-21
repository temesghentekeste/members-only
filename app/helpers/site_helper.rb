module SiteHelper
  def member_or_guest
    if user_signed_in? 
      render '/layouts/member_menu'
    else
      render '/layouts/guest_menu'
    end
  end
end
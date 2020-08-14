module ApplicationHelper
  def session_controls
    if current_user
      content_tag(:li) do
        content_tag(:span, "Welcome #{current_user.name}")
      end +
        content_tag(:li, ' | ') +
        content_tag(:li) do
          link_to 'Logout', log_out_path, method: :delete
        end
    else
      content_tag(:li) do
        link_to 'Login', log_in_path
      end +
        content_tag(:li, ' | ') +
        content_tag(:li) do
          link_to 'Register', sign_up_path
        end
    end
  end
end

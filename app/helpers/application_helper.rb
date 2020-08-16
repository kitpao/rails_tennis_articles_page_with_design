module ApplicationHelper
  def session_controls
    if current_user
      content_tag(:li) do
        content_tag(:span) do
          link_to "Write as #{current_user.name}", new_article_path
        end
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

  def display_4articles(art, ind)
    if ind < 2
      content_tag(:div, nil, class: 'photo') do
        'photo ' + art
      end +
        content_tag(:div, nil, class: 'details') do
          'text ' + art
        end
    else
      content_tag(:div, nil, class: 'details') do
        'text ' + art
      end +
        content_tag(:div, nil, class: 'photo') do
          'photo ' + art
        end
    end
  end
end

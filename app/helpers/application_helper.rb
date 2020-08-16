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
        display_photo(art)
      end +
        content_tag(:div, nil, class: 'details') do
          display_details(art)
        end
    else
      content_tag(:div, nil, class: 'details') do
        display_details(art)
      end +
        content_tag(:div, nil, class: 'photo') do
          display_photo(art)
        end
    end
  end

  def display_photo(art)
    if art.image.attached?
      image_tag(art.image)
    else
      image_tag("https://source.unsplash.com/800x600/?{tennis},{#{art.title}}")
    end
  end

  def display_details(art)
    content_tag(:h1, @category.name, class: 'orange-text') +
      content_tag(:h2, art.title) +
      content_tag(:p, simple_format(art.text.truncate(160))) +
      content_tag(:span, "#{art.votes_count} votes - Your reaction: ") +
      content_tag(:span, nil, class: 'orange-links') do
        vote_toggle_btn(art)
      end
  end

  def vote_toggle_btn(art)
    vote = Vote.find_by(article: art, user: current_user)
    if vote
      link_to('(^.^)b Click to Unvote', article_vote_path(id: vote.id, article_id: art.id), method: :delete)
    else
      link_to('(°-°) Click to Vote!', article_votes_path(article_id: art.id), method: :post)
    end
  end
end

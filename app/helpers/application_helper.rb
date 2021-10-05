module ApplicationHelper
  def show_user_name(current_user)
    if signed_in?
      "<p class='control'>
        #{current_user.name}
        </p>
          <p class='control'>
            #{link_to 'Logout', destroy_user_session_path, method: :delete, class: 'button is-info'}
          </p>".html_safe
    else
      "<p class='control'>
          #{link_to 'Sign in || Sign up', new_user_registration_path, class: 'button is-info'}
        </p>".html_safe
    end
  end

  def show_visitors(visitors)
    result = '<p>No visitors yet</p>'
    unless visitors.count.zero?
      result = ''
      visitors.each do |visitor|
        result += "<div class='rounded'>#{visitor.name}</p>"
      end
    end
    result.html_safe
  end

  def visit_event_btn(event)
    if event.visiting.exists?(user_id: current_user.id)
      '<p>Already visited</p>'.html_safe
    else
      link_to 'Visit Event', join_event_visitings_path(id: @event.id),
              class: 'button is-info is-inverted'.to_s.html_safe
    end
  end
end

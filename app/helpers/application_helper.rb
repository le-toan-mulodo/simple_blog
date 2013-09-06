module ApplicationHelper
  def full_title(title)
    if title.nil?
      "Demo Rails"
    else
      "Demo Rails:" + title
    end
  end

  def cut_body(body, number)
    shortcut_body =  body.split(" ");
    if shortcut_body.count <= number
    body
    else
      shortcut_body.first(number).join(" ") + "..."
    end

  end

  def nl2br(s)
    s.gsub(/\n/, '<br/>')
  end
  
  def format_datetime_to_date(the_date)
      if !the_date.nil? 
         the_date.strftime('%Y-%m-%d')
      end
   end
end

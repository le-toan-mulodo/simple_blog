module ApplicationHelper
  def full_title(title)
    if title.nil?
      "Demo Rails"
    else
      "Demo Rails:" + title
    end
  end

  def cut_body(body)
    first_100_words =  body.split(" ");
    if first_100_words.count <= 100
    body
    else
      first_100_words.first(100).join(" ") + "..."
    end

  end

  def nl2br(s)
    s.gsub(/\n/, '<br/>')
  end
end

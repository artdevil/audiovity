module ApplicationHelper
  def title
    title = "Audiolist - share your audio !!!"
    if @title
      "#{title} | #{@title}"
    else
      title
    end
  end
end

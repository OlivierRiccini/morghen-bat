module PagesHelper
  def title_section(title)
    if title.split.length == 2
      title_to_display = "#{title.split[0].upcase} <strong>#{title.split[1].upcase}</strong>"
      title_to_display.html_safe
    elsif title.split.length == 3
      title_to_display = "#{title.split[0].upcase} <strong>#{title.split[1].upcase} #{title.split[2].upcase}</strong>"
      title_to_display.html_safe
    end
  end
end

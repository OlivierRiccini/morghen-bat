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

  def define_first_picture(project)
    if !project.pictures.where(position: 1).empty?
      if project.pictures.where(position: 1).size < 1
        first_picture = project.pictures.where(position: 1).first.take.url
      else
        first_picture = project.pictures.where(position: 1).take.url
      end
    elsif !project.pictures.first.nil?
      first_picture = project.pictures.first.url
    else
      first_picture = "no pictures available"
    end
  end
end

module MessageHelper

  def checked(area)
    @message.corps_de_metier.nil? ? false : @message.corps_de_metier.match(area)
  end

end

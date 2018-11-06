class Background
  attr_reader :id, :title, :link

  def initialize(data)
    data = data
    @title = data[:title]
    @link = data[:url_o]
  end

end

class GeocodeService

  def initialize(address)
    @address = address
  end

  def get_coordinates
    get_json
  end

  private
    def get_json
      JSON.parse(response.body, symbolize_name: true)
    end

    def response
      conn.get("/maps/api/geocode/json?address=#{@location}&key=#{ENV["google_api_key"]}")
    end

    def conn
      Faraday.new(url: 'https://maps.googleapis.com')
    end
end

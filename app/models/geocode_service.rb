class GeocodeService

  def initialize(address)
    @address = address
  end

  def get_coordinates
    get_json[:results][0][:geometry][:location]
  end

  private
    def get_json
      JSON.parse(response.body, symbolize_names: true)
    end

    def response
      conn.get("/maps/api/geocode/json?address=#{@address}&key=#{ENV["google_api_key"]}")
    end

    def conn
      Faraday.new(url: 'https://maps.googleapis.com')
    end
end

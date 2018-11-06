require "rails_helper"

describe "background image for city API endpoint" do
  it "request will return JSON of image for city" do

    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful

    background = JSON.parse(response.body)

    expect(background).to be_a(Hash)
    expect(background).to have_key('data')
    expect(background['data']).to have_key('attributes')
    # expect(background['data']['attributes']).to have_key('location')
    # expect(background['data']['attributes']['location']).to eq('Denver, CO, USA')
    # expect(background['data']).to have_key('type')
    # expect(background['data']['type']).to eq('forecast')
  end
end
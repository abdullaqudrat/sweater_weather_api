require "rails_helper"

describe "background image for city API endpoint" do
  it "request will return JSON of image for city" do

    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful

    background = JSON.parse(response.body)
    
    expect(background).to be_a(Hash)
    expect(background).to have_key('data')
    expect(background['data']).to be_a(Array)
    expect(background['data'][0]).to have_key('id')
    expect(background['data'][0]).to have_key('type')
    expect(background['data'][0]).to have_key('attributes')
    expect(background['data'][0]['attributes']).to have_key('id')
    expect(background['data'][0]['attributes']).to have_key('title')
    expect(background['data'][0]['attributes']).to have_key('link')
  end
end

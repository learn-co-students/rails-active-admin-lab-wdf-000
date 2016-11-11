require 'rails_helper'

RSpec.describe "routing" do
  it "doesn't route artist create and edit routes" do
    expect(get: '/artists/new').to route_to('artists#show')
    expect(get: '/artists/edit').to route_to('artists#show')
    expect(post: '/artists').to_not be_routable
    expect(patch: '/artists/update').to_not be_routable
  end

  it "doesn't route song create and edit routes" do
    expect(get: '/songs/new').to route_to('songs#show')
    expect(get: '/songs/edit').to route_to('songs#show')
    expect(post: '/artists').to_not be_routable
    expect(patch: '/artists/update').to_not be_routable
  end

end

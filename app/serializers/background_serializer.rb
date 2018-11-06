class BackgroundSerializer
  include FastJsonapi::ObjectSerializer
  set_type :background_image
  attributes :id, :title, :link
end

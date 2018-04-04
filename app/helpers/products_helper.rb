module ProductsHelper

  # This is a legacy method that checks for product pictures in the DB pre CarrierWave
  def asset_exist?(path)
    if Rails.configuration.assets.compile
      Rails.application.precompiled_assets.include? path
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end

  # This just moves the google maps link for the place_id out to a method making the code cleaner
  def google_map(center)
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyDNN7OiP-psXLqajIUmJsRXhHd983eDC50&q=place_id:#{center}"
  end

end

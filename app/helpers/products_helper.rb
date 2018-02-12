module ProductsHelper
  def asset_exist?(path)
    if Rails.configuration.assets.compile
      Rails.application.precompiled_assets.include? path
    else
      Rails.application.assets_manifest.assets[path].present?
    end
  end

  def google_map(center)
    "https://www.google.com/maps/embed/v1/place?key=AIzaSyDNN7OiP-psXLqajIUmJsRXhHd983eDC50&q=place_id:#{center}"
  end

end

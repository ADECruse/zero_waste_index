require 'csv'
namespace :import_products_csv do
  task :create_products => :environment do
    csv_text = File.read('public/products.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Product.create!(row.to_hash)
    end
  end
end 

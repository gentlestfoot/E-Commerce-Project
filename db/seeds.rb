require "csv"

Product.destroy_all
Category.destroy_all

CSV.foreach(Rails.root.join("lib/categories.csv")) do |row|
  Category.create(
    name:        row[0],
    description: row[1]
  )
end

Category.all.each do |category|
  30.times do
    Product.create(
      name:        "#{Faker::Commerce.material} #{Faker::Mountain.name}",
      description: Faker::Hipster.paragraph,
      price:       Faker::Number.between(from: 15_000, to: 299_999),
      active:      true,
      category:    category
    )
  end
end

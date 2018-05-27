require 'rails_helper'

describe Product do
  context "when the product has comments" do
    let(:product) { Product.create!(name: "shiniest shiny") }
    let(:user) { User.create!(first_name: "Kelly", last_name: "Mae", email: "kelly@kelly.com", password: "testing", admin: false) }

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful shiny!")
    product.comments.create!(rating: 3, user: user, body: "Ok shiny!")
    product.comments.create!(rating: 5, user: user, body: "Great shiny!")
  end

  it "returns the average rating of all comments" do
    expect(product.average_rating).to eq 3
  end

  it "is not valid without a name" do
    expect(Product.new(description: "Nice Shiny")).not_to be_valid
  end

  end
end

class AddLinkRefToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :link, :string
  end
end

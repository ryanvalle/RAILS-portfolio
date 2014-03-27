class AddVanityUrlToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :vanity_url, :string
    add_index :portfolios, :vanity_url
  end
end

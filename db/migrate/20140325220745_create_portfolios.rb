class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :description
      t.string :mediatype
      t.string :location
      t.boolean :publish

      t.timestamps
    end
  end
end

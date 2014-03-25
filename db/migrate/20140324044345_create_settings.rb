class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :sitetitle
      t.string :sitedescription
      t.string :siteemail
      t.string :siteowner

      t.timestamps
    end
  end
end

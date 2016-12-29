class ChangeWebsiteToString < ActiveRecord::Migration
  def up
    change_column :gyms, :website, :string
  end

  def down
    change_column :gyms, :website, :integer
  end
end

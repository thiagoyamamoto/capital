class AddCompanyToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :company, :string
  end
end

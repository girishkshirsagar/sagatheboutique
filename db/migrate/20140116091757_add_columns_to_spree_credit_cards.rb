class AddColumnsToSpreeCreditCards < ActiveRecord::Migration
  def change
    add_column :spree_credit_cards, :number, :string
    add_column :spree_credit_cards, :verification_value, :string
  end
end

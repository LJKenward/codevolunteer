class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.references :volunteer, index: true, foreign_key: true
      t.references :organisation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

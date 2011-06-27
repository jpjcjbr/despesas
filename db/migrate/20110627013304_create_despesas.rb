class CreateDespesas < ActiveRecord::Migration
  def self.up
    create_table :despesas do |t|
      t.string :descricao
      t.string :local
      t.decimal :valor
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :despesas
  end
end

class CreateMissionarios < ActiveRecord::Migration
  def self.up
    create_table :missionarios do |t|
      t.string :nome
      t.integer :idade
      t.text :endereco
      t.string :email
      t.references :paroquia
      t.references :funcao

      t.timestamps
    end
  end

  def self.down
    drop_table :missionarios
  end
end

class CreateTelefones < ActiveRecord::Migration
  def self.up
    create_table :telefones do |t|
      t.references :missionario
      t.references :tipo_telefone

      t.timestamps
    end
  end

  def self.down
    drop_table :telefones
  end
end

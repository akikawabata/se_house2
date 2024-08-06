class CreateCategorySoundEffects < ActiveRecord::Migration[6.1]
  def change
    create_table :category_sound_effects do |t|
      t.references :sound_effect_id, null: false, foreign_key: true
      t.references :category_id, null: false, oreign_key: true
      t.timestamps
    end
  end
end

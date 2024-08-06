class CreateSoundEffects < ActiveRecord::Migration[6.1]
  def change
    create_table :sound_effects do |t|
      t.text :sound_effect_name
      t.text :sound_effect_details
      t.boolean :is_active
      t.timestamps
    end
  end
end

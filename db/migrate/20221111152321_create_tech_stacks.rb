# frozen_string_literal: true

class CreateTechStacks < ActiveRecord::Migration[5.2]
  def change
    create_table :tech_stacks do |t|
      t.string :stack_name, null: false, unique: true

      t.timestamps
    end
  end
end

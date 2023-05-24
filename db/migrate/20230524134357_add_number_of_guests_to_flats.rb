class AddNumberOfGuestsToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :number_of_guests, :integer
  end
end

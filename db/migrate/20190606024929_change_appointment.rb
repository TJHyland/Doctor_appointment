class ChangeAppointment < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :appointment_date, :string
  end
end

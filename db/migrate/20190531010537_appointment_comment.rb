class AppointmentComment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :appointment_comment, :text
  end
end

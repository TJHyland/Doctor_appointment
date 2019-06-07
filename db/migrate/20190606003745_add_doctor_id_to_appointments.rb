class AddDoctorIdToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :doctor_id, :integer
    add_index :appointments, :doctor_id
  end
end

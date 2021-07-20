Hanami::Model.migration do
  change do
    create_table :humans do
      primary_key :id
      foreign_key :human_type_id, :human_types, on_delete: :cascade, null: false
      foreign_key :identification_type_id, :identification_types, on_delete: :cascade, null: false

      column :identification_number, Integer, unique: true, null: false
      column :first_name, String
      column :others_names, String
      column :first_lastname, String
      column :other_lastname, String
      column :age, Integer
      column :birth_date, Date
      column :phone, String
      column :adress, String
      column :e_mail, String
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

Hanami::Model.migration do
  change do
    create_table :payment_method_types do
      primary_key :id

      column :name, String, null: false
      column :description, String, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

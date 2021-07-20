Hanami::Model.migration do
  change do
    create_table :payment_methods do
      primary_key :id
      foreign_key :human_id, :humans, on_delete: :cascade, null: false
      foreign_key :payment_method_type_id, :payment_method_types, on_delete: :cascade, null: false

      column :acceptance_token, String, null: false
      column :pay_token, String, null: false
      column :pay_source, String, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

Hanami::Model.migration do
  change do
    create_table :riders do
      primary_key :id
      foreign_key :human_id, :humans, on_delete: :cascade, null: false
      
      column :rating, Float
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

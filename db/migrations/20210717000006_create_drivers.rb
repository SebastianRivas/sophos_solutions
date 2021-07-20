Hanami::Model.migration do
  change do
    create_table :drivers do
      primary_key :id
      foreign_key :human_id, :humans, on_delete: :cascade, null: false
      
      column :license, String
      column :rating, Float
      column :state, Integer
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

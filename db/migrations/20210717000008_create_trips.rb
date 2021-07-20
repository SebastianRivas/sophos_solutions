Hanami::Model.migration do
  change do
    create_table :trips do
      primary_key :id
      foreign_key :rider_id, :humans, on_delete: :cascade, null: false
      foreign_key :driver_id, :humans, on_delete: :cascade, null: false

      column :init_latitude, BigDecimal, null: false
      column :init_longitude, BigDecimal, null: false
      column :end_latitude, BigDecimal, null: true
      column :end_longitude, BigDecimal, null: true
      column :init_time, Time, null: false
      column :end_time, Time, null: true
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

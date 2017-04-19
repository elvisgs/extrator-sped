Sequel.migration do
  change do
    create_table :reg_1350 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :serie, String, size: 1000
      column :fabricante, String, size: 60
      column :modelo, String, size: 1000
      column :tipo_medicao, String, size: 1
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

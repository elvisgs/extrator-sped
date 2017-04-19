Sequel.migration do
  change do
    create_table :reg_e300 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :uf, String, size: 2
      column :dt_ini, Date
      column :dt_fin, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

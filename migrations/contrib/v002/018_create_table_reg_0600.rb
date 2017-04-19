Sequel.migration do
  change do
    create_table :reg_0600 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_alt, Date
      column :cod_ccus, String, size: 60
      column :ccus, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

Sequel.migration do
  change do
    create_table :reg_0460 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_obs, String, size: 6
      column :txt, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

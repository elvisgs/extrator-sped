Sequel.migration do
  change do
    create_table :reg_0140 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_est, String, size: 60
      column :nome, String, size: 100
      column :cnpj, String, size: 14
      column :uf, String, size: 2
      column :ie, String, size: 14
      column :cod_mun, String, size: 7
      column :im, String, size: 1000
      column :suframa, String, size: 9
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

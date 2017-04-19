Sequel.migration do
  change do
    create_table :reg_0305 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_ccus, String, size: 60
      column :func, String, size: 1000
      column :vida_util, String, size: 3
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

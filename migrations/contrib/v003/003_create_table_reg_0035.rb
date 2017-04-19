Sequel.migration do
  change do
    create_table :reg_0035 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_scp, String, size: 14
      column :nome_scp, String, size: 255
      column :inf_comp, String, size: 255
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

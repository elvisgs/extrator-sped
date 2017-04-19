Sequel.migration do
  change do
    create_table :reg_d120 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_mun_orig, String, size: 7
      column :cod_mun_dest, String, size: 7
      column :veic_id, String, size: 7
      column :uf_id, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

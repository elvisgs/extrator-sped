Sequel.migration do
  change do
    create_table :reg_0208 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_tab, String, size: 2
      column :cod_gru, String, size: 2
      column :marca_com, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

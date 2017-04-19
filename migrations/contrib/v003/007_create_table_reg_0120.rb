Sequel.migration do
  change do
    create_table :reg_0120 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :mes_dispensa, String, size: 6
      column :inf_comp, String, size: 90
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

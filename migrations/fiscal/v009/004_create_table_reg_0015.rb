Sequel.migration do
  change do
    create_table :reg_0015 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :uf_st, String, size: 2
      column :ie_st, String, size: 14
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

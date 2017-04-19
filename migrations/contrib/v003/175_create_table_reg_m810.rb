Sequel.migration do
  change do
    create_table :reg_m810 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :nat_rec, String, size: 3
      column :vl_rec, BigDecimal, size: [18, 2]
      column :cod_cta, String, size: 60
      column :desc_compl, String, size: 1000
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

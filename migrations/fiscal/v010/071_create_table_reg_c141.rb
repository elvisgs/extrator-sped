Sequel.migration do
  change do
    create_table :reg_c141 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :num_parc, String, size: 2
      column :dt_vcto, Date
      column :vl_parc, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

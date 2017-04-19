Sequel.migration do
  change do
    create_table :reg_h005 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :dt_inv, Date
      column :vl_inv, BigDecimal, size: [18, 2]
      column :mot_inv, String, size: 2
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

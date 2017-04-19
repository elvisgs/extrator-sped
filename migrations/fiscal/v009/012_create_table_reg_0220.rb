Sequel.migration do
  change do
    create_table :reg_0220 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :unid_conv, String, size: 6
      column :fat_conv, BigDecimal, size: [18, 6]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

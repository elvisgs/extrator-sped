Sequel.migration do
  change do
    create_table :reg_1600 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :per_apur_ant, String, size: 6
      column :nat_cont_rec, String, size: 2
      column :vl_cont_apur, BigDecimal, size: [18, 2]
      column :vl_cred_cofins_desc, BigDecimal, size: [18, 2]
      column :vl_cont_dev, BigDecimal, size: [18, 2]
      column :vl_out_ded, BigDecimal, size: [18, 2]
      column :vl_cont_ext, BigDecimal, size: [18, 2]
      column :vl_mul, BigDecimal, size: [18, 2]
      column :vl_jur, BigDecimal, size: [18, 2]
      column :dt_recol, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

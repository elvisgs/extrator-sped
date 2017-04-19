Sequel.migration do
  change do
    create_table :reg_1800 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :inc_imob, String, size: 90
      column :rec_receb_ret, BigDecimal, size: [18, 2]
      column :rec_fin_ret, BigDecimal, size: [18, 2]
      column :bc_ret, BigDecimal, size: [18, 2]
      column :aliq_ret, BigDecimal, size: [18, 2]
      column :vl_rec_uni, BigDecimal, size: [18, 2]
      column :dt_rec_uni, Date
      column :cod_rec, String, size: 4
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

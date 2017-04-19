Sequel.migration do
  change do
    create_table :reg_m625 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :det_valor_aj, BigDecimal, size: [18, 2]
      column :cst_cofins, String, size: 2
      column :det_bc_cred, BigDecimal, size: [18, 3]
      column :det_aliq, BigDecimal, size: [18, 4]
      column :dt_oper_aj, Date
      column :desc_aj, String, size: 255
      column :cod_cta, String, size: 60
      column :info_compl, String, size: 255
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

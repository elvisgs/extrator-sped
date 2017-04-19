Sequel.migration do
  change do
    create_table :reg_h010 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item, String, size: 60
      column :unid, String, size: 6
      column :qtd, BigDecimal, size: [18, 3]
      column :vl_unit, BigDecimal, size: [18, 6]
      column :vl_item, BigDecimal, size: [18, 2]
      column :ind_prop, String, size: 1
      column :cod_part, String, size: 60
      column :txt_compl, String, size: 1000
      column :cod_cta, String, size: 1000
      column :vl_item_ir, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

Sequel.migration do
  change do
    create_table :reg_c173 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :lote_med, String, size: 1000
      column :qtd_item, BigDecimal, size: [18, 3]
      column :dt_fab, Date
      column :dt_val, Date
      column :ind_med, String, size: 1
      column :tp_prod, String, size: 1
      column :vl_tab_max, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

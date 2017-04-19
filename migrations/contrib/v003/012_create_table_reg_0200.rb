Sequel.migration do
  change do
    create_table :reg_0200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_item, String, size: 60
      column :descr_item, String, size: 1000
      column :cod_barra, String, size: 1000
      column :cod_ant_item, String, size: 60
      column :unid_inv, String, size: 6
      column :tipo_item, String, size: 2
      column :cod_ncm, String, size: 8
      column :ex_ipi, String, size: 3
      column :cod_gen, String, size: 2
      column :cod_lst, String, size: 5
      column :aliq_icms, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

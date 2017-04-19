Sequel.migration do
  change do
    create_table :reg_1900 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cnpj, String, size: 14
      column :cod_mod, String, size: 2
      column :ser, String, size: 4
      column :sub_ser, String, size: 20
      column :cod_sit, String, size: 2
      column :vl_tot_rec, BigDecimal, size: [18, 2]
      column :quant_doc, Integer
      column :cst_pis, String, size: 2
      column :cst_cofins, String, size: 2
      column :cfop, String, size: 4
      column :info_compl, String
      column :cod_cta, String, size: 60
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

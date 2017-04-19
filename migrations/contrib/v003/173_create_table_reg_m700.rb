Sequel.migration do
  change do
    create_table :reg_m700 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_cont, String, size: 2
      column :vl_cont_apur_difer, BigDecimal, size: [18, 2]
      column :nat_bc_cred_desc, String, size: 2
      column :vl_cred_desc_difer, BigDecimal, size: [18, 2]
      column :vl_cont_difer_ant, BigDecimal, size: [18, 2]
      column :per_apur, String, size: 6
      column :dt_receb, Date
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

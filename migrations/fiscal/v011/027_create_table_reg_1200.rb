Sequel.migration do
  change do
    create_table :reg_1200 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cod_aj_apur, String, size: 8
      column :sld_cred, BigDecimal, size: [18, 2]
      column :cred_apr, BigDecimal, size: [18, 2]
      column :cred_receb, BigDecimal, size: [18, 2]
      column :cred_util, BigDecimal, size: [18, 2]
      column :sld_cred_fim, BigDecimal, size: [18, 2]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

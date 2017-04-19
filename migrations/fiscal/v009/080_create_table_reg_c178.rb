Sequel.migration do
  change do
    create_table :reg_c178 do
      column :id, Bignum, primary_key: true
      column :id_pai, Bignum, index: true, null: false
      column :cl_enq, String, size: 5
      column :vl_unid, BigDecimal, size: [18, 2]
      column :quant_pad, BigDecimal, size: [18, 3]
      column :cnpj_pai, String, size: 14, index: true
    end
  end
end

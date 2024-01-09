import hail as hl
hl.init()

mt = hl.read_matrix_table('YNP_WholeGenome_stringent_chr01.recode.vcf')

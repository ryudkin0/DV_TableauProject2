df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select ID, STATE, CLTV, cume_dist() 
OVER (PARTITION BY STATE order by CLTV) cume_dist
from MBS
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_ry2634', PASS='orcl_ry2634', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
tbl_df(df)



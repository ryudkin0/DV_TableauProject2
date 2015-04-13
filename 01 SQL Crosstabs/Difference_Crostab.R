df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select ID, STATE, CLTV, last_value(max_CLTV) 
OVER (PARTITION BY STATE order by CLTV) max_CLTV, last_value(max_CLTV) 
OVER (PARTITION BY STATE order by CLTV) - CLTV CLTV_diff
from
(SELECT ID, STATE, CLTV, max(CLTV)
OVER (PARTITION BY STATE) max_CLTV 
FROM MBS) 
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_ry2634', PASS='orcl_ry2634', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
tbl_df(df)



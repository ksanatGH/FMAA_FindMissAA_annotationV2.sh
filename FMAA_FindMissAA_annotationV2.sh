#!/bin/sh
# To locate Miss AA_annotation gene(s)/variant(S) in GHDB without the need of knowing the 
#+chr,position, etc. To get the missed genes annotation, just enter the scripts name
#+and sample ID
#+Guided by Stephen, Written by Kaisan Ng. Feb 22, 2017

echo "Enter Password and Hit Enter"
Sampleid='$1'
psql -U reporting -h 10.4.170.26 -d ghdb -W << EOF
select * from indel_call where run_sample_id='$1' and tb_code='103';
EOF


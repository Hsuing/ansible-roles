#!/bin/bash
for((i=1;i<=$1;i++));
do
(
/bin/psql  <<EOF
    begin;
       DO \$\$
         DECLARE
           lv_var varchar;
           lv_rec record;
         BEGIN
            for lv_rec in (
               select trunc(random()*1000000::int4)::int as rec_id
                 from generate_series(1,40)
            )
            loop
               update tmp_t0 set name=md5(id::varchar) where id=lv_rec.rec_id;
            end loop;
         END;
       \$\$ LANGUAGE plpgsql;
    commit;
EOF
)
done



SET ssurgo_tmp_sql=ssurgo_muaggatt.sql

IF EXIST %ssurgo_tmp_sql% del /F %ssurgo_tmp_sql%

for /f %%f in ('dir muaggatt.txt /s /b') do (
@echo \copy ssurgo.muaggatt from %%f with csv delimiter as '^|' null as '' >> %ssurgo_tmp_sql%
)
psql -c "truncate table ssurgo.muaggatt;"

psql -f %ssurgo_tmp_sql%
 

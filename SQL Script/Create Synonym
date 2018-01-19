set echo off head off
set pages 0 feed off verify off lines 120
ACCEPT ow PROMPT 'Enter schema owner: '
REM Generate synonym script for table
spool syn_alluser_onetbl.log
select 'create synonym ' || username||'.'||t.table_name ||' for  &ow'||'.'||t.table_name||';'  
from 
  all_users u, 
  all_tables t  
where 
  u.username <> '&ow' and 
  t.owner='&ow' and 
  t.table_name in 
(
'<TABLE_NAME>',
'<TABLE_NAME>'
) 
and (u.username in 
(
select rtrim(user_id) from sc_user) or u.username in ('USERNAME', '<USERNAME>')
)
/

REM Generate synonym script for View
select 'create synonym ' || username||'.'||t.view_name ||' for  &ow'||'.'||t.view_name||';'  
from
  all_users u, 
  all_views t  
where 
  u.username <> '&ow' and
  t.owner='&ow' and
  t.view_name in
(
'<VIEW_NAME>',
'<VIEW_NAME>'
)
and (u.username in 
(
select rtrim(user_id) from sc_user) or u.username in ('<USERNAME>', '<USERNAME>')
)
/

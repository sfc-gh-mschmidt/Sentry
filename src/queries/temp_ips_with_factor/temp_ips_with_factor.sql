-- NOTE: IP list is sorted
select event_timestamp, event_type, user_name, client_ip, reported_client_type, first_authentication_factor, second_authentication_factor, is_success
from snowflake.account_usage.login_history
where first_authentication_factor='PASSWORD'
and client_ip in (
    '104.129.24.124',
    '104.223.91.28',
    '104.223.91.28',
    '146.70.117.210',
    '146.70.117.210',
    '146.70.117.210',
    '146.70.117.210',
    '146.70.117.56',
    '146.70.124.216',
    '146.70.165.227',
    '146.70.166.176',
    '146.70.171.112',
    '146.70.171.99',
    '154.47.30.137',
    '154.47.30.150',
    '169.150.201.25',
    '169.150.203.22',
    '169.150.203.22',
    '173.44.63.112',
    '176.123.6.193',
    '184.147.100.29',
    '185.156.46.163',
    '185.213.155.241',
    '192.252.212.60',
    '193.32.126.233',
    '193.32.126.233',
    '194.230.144.126',
    '198.44.129.82',
    '198.44.136.56',
    '198.44.136.82',
    '198.54.130.153',
    '198.54.130.153',
    '198.54.130.153',
    '198.54.135.67',
    '198.54.135.99',
    '198.54.135.99',
    '204.152.216.105',
    '206.217.205.49',
    '206.217.206.108',
    '37.19.210.21',
    '37.19.210.34',
    '45.134.142.200',
    '45.134.142.200',
    '45.134.142.200',
    '45.86.221.146',
    '45.86.221.146',
    '45.86.221.146',
    '66.115.189.247',
    '66.115.189.247',
    '66.63.167.147',
    '87.249.134.11',
    '93.115.0.49',
    '93.21.79.57',
    '93.21.79.57',
    '96.44.191.140'
)
and reported_client_type='JDBC'
order by event_timestamp desc;
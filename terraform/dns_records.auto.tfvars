zone_name_dev      = "dev.dca.financialproducts.stone.com.br"
dns_resource_group_name =   "financialproducts-common-ec2-stg"
ttl             = "900"            
aks_inside_app_name_list   = [
    {appname = "grafana-inside"},
    {appname = "alertmanager-inside"},
    {appname = "prometheus-inside"},
]
aks_inside_lb_ip   = "10.150.5.81"

zone_name_stg      = "stg.dca.financialproducts.stone.com.br"

aks_inside_app_name_list_dev   = [
    {appname = "scd-trava-issuer-dev"},
]
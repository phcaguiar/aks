zone_name       = "dev.dca.financialproducts.stone.com.br"
ttl             = "900"            
aks_inside_app_name_list   = [
    {appname = "grafana-inside"},
    {appname = "alertmanager-inside"},
    {appname = "prometheus-inside"},
    {appname = "scd-trava-issuer"},
]
aks_inside_lb_ip   = "10.150.5.81"
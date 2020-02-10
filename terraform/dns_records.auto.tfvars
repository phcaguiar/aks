zone_name_dev      = "dev.dca.financialproducts.stone.com.br"
dns_resource_group_name =   "financialproducts-common-ec2-stg"
ttl             = "900"            
aks_inside_app_name_list   = [
    {appname = "grafana-inside-cl1"},
    {appname = "alertmanager-inside-cl1"},
    {appname = "prometheus-inside-cl1"},
]
aks_inside_lb_ip   = "10.150.5.81"
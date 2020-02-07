output "ins_kube_config_raw" {
    value = "${module.aks.ins_kube_config_raw}"
    sensitive = true
}
# output "dmz_kube_config_raw" {
#     value = "${module.aks.dmz_kube_config_raw}"
#     sensitive = true
# }

output "ins_kube_id" {
    value = "${module.aks.ins_kube_id}"
}
# output "dmz_kube_id" {
#     value = "${module.aks.dmz_kube_id}"
# }
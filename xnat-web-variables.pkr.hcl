variable "xnat_version" {
  default = "1.8.2.2"
  type = string
}
variable "xnat_root" {
  default = "/data/xnat"
  type = string
}
variable "xnat_home" {
  default = "/data/xnat/home"
  type = string
}
variable "xnat_plugins" {
  default = "/data/xnat/home/plugins"
  type = string
}
variable "xnat_plugins_list" {
  default = [
    "container-service-3.0.0.jar",
    "ldap-auth-plugin-1.1.0.jar",
    "ohif-viewer-3.0.1.jar",
    "openid-auth-plugin-1.0.2.jar",
    "xsync-plugin-all-1.4.0.1.jar",
    "batch-launch-plugin-0.4.0.jar"
  ]
  type = list(string)
}
variable "run_as_uid" {
  default = "0"
  type = string
}
variable "docker_image" {
  default = "tomcat:9.0.46-jdk8-openjdk-buster"
  type = string
}
variable "repository" {
  default = "ghcr.io/australian-imaging-service"
  type = string
}
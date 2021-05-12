xnat_version = 1.8.1
xnat_ver_17 = 1.7.6
plugin_ldap_auth_ver = 1.1.0
plugin_openid_auth_ver = 1.0.2

xnat_war = xnat-web-$(xnat_version).war
xnat_url = https://bitbucket.org/xnatdev/xnat-web/downloads/$(xnat_war)
xnat_war_17 = xnat-web-$(xnat_ver_17).war
xnat_url_17 = https://bitbucket.org/xnatdev/xnat-web/downloads/$(xnat_war_17)
plugin_ldap_auth_jar = ldap-auth-plugin-$(plugin_ldap_auth_ver).jar
plugin_ldap_auth_url = https://bitbucket.org/xnatx/ldap-auth-plugin/downloads/ldap-auth-plugin-1.1.0.jar
plugin_openid_auth_jar = openid-auth-plugin-$(plugin_openid_auth_ver).jar
plugin_openid_auth_url = https://github.com/Australian-Imaging-Service/xnat-openid-auth-plugin/releases/download/$(plugin_openid_auth_ver)/xnat-openid-auth-plugin-all-$(plugin_openid_auth_ver).jar
#plugin_openid_auth_url = http://dev.redboxresearchdata.com.au/nexus/service/local/repositories/snapshots/content/au/edu/qcif/xnat/openid/openid-auth-plugin/$(plugin_openid_auth_ver)-SNAPSHOT/openid-auth-plugin-$(plugin_openid_auth_ver)-20190409.122010-10.jar

all : $(xnat_war) $(xnat_war_17)

$(xnat_war) : $(plugin_ldap_auth_jar) $(plugin_openid_auth_jar)
	wget --no-verbose -O $(xnat_war) $(xnat_url)

$(xnat_war_17) : $(plugin_ldap_auth_jar) $(plugin_openid_auth_jar)
	wget --no-verbose -O $(xnat_war_17) $(xnat_url_17)

$(plugin_ldap_auth_jar) :
	wget --no-verbose -O $(plugin_ldap_auth_jar) $(plugin_ldap_auth_url)

$(plugin_openid_auth_jar) :
	wget --no-verbose -O $(plugin_openid_auth_jar) $(plugin_openid_auth_url)

.PHONY : clean
clean :
	rm -f $(xnat_war)
	rm -f $(xnat_war_17)
	rm -f $(plugin_openid_auth_jar)
	rm -f $(plugin_ldap_auth_jar)

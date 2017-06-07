oc new-project vgti
oc create -f extensions/datavirt-app-secret.yaml 
oc adm policy add-role-to-user view system:serviceaccount:vgti:datavirt-service-account
oc secrets new datavirt-app-config extensions/datasources.properties
oc policy add-role-to-user view system:serviceaccount:vgti:datavirt-service-account -n vgti 

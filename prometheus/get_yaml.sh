#!/bin/bash
#**namespaces**  

wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/00namespace-namespace.yaml
kubectl apply -f .
##**prometheus-operator** 
mkdir prometheus-operator && cd prometheus-operator
 
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-0alertmanagerCustomResourceDefinition.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-0podmonitorCustomResourceDefinition.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-0prometheusCustomResourceDefinition.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-0prometheusruleCustomResourceDefinition.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-0servicemonitorCustomResourceDefinition.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-clusterRole.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-clusterRoleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-deployment.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/0prometheus-operator-serviceMonitor.yaml

kubectl apply -f .

##**prometheus-adapter**
mkdir prometheus-adapter && cd prometheus-adapter
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-roleBindingAuthReader.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-apiService.yaml  
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-clusterRole.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-clusterRoleAggregatedMetricsReader.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-clusterRoleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-clusterRoleBindingDelegator.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-clusterRoleServerResources.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-configMap.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-deployment.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-adapter-service.yaml


kubectl apply -f .

##node-exporter
mkdir node-exporter && cd node-exporter
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-clusterRole.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-clusterRoleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-daemonset.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/node-exporter-serviceMonitor.yaml

kubectl apply -f .

###kube-state-metrics
mkdir kube-state-metrics && cd kube-state-metrics
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-role.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-clusterRole.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-clusterRoleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-roleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-deployment.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/kube-state-metrics-serviceMonitor.yaml
sed -i 's/k8s\.gcr\.io/registry\.cn-hangzhou\.aliyuncs\.com\/google_containers/g' kube-state-metrics-deployment.yaml

kubectl apply -f .

###prometheus
mkdir prometheus && cd prometheus
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-clusterRole.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-clusterRoleBinding.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-roleBindingSpecificNamespaces.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-roleConfig.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-roleSpecificNamespaces.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-prometheus.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-serviceMonitorApiserver.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-serviceMonitorCoreDNS.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-serviceMonitorKubeControllerManager.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/prometheus-serviceMonitorKubelet.yaml

kubectl apply -f .

####alertmanager
mkdir alertmanager && cd alertmanager
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/alertmanager-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/alertmanager-secret.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/alertmanager-alertmanager.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/alertmanager-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/alertmanager-serviceMonitor.yaml

kubectl apply -f .

###grafana
mkdir grafana && cd grafana
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-serviceAccount.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-dashboardDefinitions.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-dashboardDatasources.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-deployment.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-service.yaml
wget https://raw.githubusercontent.com/coreos/kube-prometheus/master/manifests/grafana-serviceMonitor.yaml

kubectl apply -f .



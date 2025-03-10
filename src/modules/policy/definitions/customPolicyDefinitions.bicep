targetScope = 'managementGroup'

// Metadata - Used by PSDocs 
metadata name = 'ALZ Bicep Module - Custom Policy Definitions'
metadata description = 'Custom Policy Definitions for Azure Landing Zones'

@sys.description('The management group scope to which the policy definitions are to be created at.')
param targetManagementGroupId string = 'alz'

var targetManagementGroupResourceId = tenantResourceId('Microsoft.Management/managementGroups', targetManagementGroupId)
var customPolicyDefinitionsArray = [
  {
    name: 'Deploy-Diagnostics-AA'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_aa.json'))
  }
  {
    name: 'Deploy-Diagnostics-ACE'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_ace.json'))
  }
  {
    name: 'Deploy-Diagnostics-ACI'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_aci.json'))
  }
  {
    name: 'Deploy-Diagnostics-ACR'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_acr.json'))
  }
  {
    name: 'Deploy-Diagnostics-AKS'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_aks.json'))
  }
  {
    name: 'Deploy-Diagnostics-AnalysisService'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_analysisservice.json'))
  }
  {
    name: 'Deploy-Diagnostics-ApiForFHIR'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_apiforfhir.json'))
  }
  {
    name: 'Deploy-Diagnostics-APIMgmt'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_apimgmt.json'))
  }
  {
    name: 'Deploy-Diagnostics-ApplicationGateway'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_applicationgateway.json'))
  }
  {
    name: 'Deploy-Diagnostics-Bastion'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_bastion.json'))
  }
  {
    name: 'Deploy-Diagnostics-Batch'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_batch.json'))
  }
  {
    name: 'Deploy-Diagnostics-CDNEndpoints'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_cdnendpoints.json'))
  }
  {
    name: 'Deploy-Diagnostics-CognitiveServices'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_cognitiveservices.json'))
  }
  {
    name: 'Deploy-Diagnostics-CosmosDB'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_cosmosdb.json'))
  }
  {
    name: 'Deploy-Diagnostics-Databricks'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_databricks.json'))
  }
  {
    name: 'Deploy-Diagnostics-DataExplorerCluster'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_dataexplorercluster.json'))
  }
  {
    name: 'Deploy-Diagnostics-DataFactory'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_datafactory.json'))
  }
  {
    name: 'Deploy-Diagnostics-DLAnalytics'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_dlanalytics.json'))
  }
  {
    name: 'Deploy-Diagnostics-DLStore'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_dlStore.json'))
  }
  {
    name: 'Deploy-Diagnostics-EventGridSub'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_eventgridsub.json'))
  }
  {
    name: 'Deploy-Diagnostics-EventGridSystemTopic'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_eventgridsystemtopic.json'))
  }
  {
    name: 'Deploy-Diagnostics-EventGridTopic'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_eventgridtopic.json'))
  }
  {
    name: 'Deploy-Diagnostics-EventHub'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_eventhub.json'))
  }
  {
    name: 'Deploy-Diagnostics-ExpressRoute'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_expressroute.json'))
  }
  {
    name: 'Deploy-Diagnostics-Firewall'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_firewall.json'))
  }
  {
    name: 'Deploy-Diagnostics-FrontDoor'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_frontdoor.json'))
  }
  {
    name: 'Deploy-Diagnostics-Function'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_function.json'))
  }
  {
    name: 'Deploy-Diagnostics-HDInsight'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_hdinsight.json'))
  }
  {
    name: 'Deploy-Diagnostics-iotHub'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_iothub.json'))
  }
  {
    name: 'Deploy-Diagnostics-KeyVault'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_keyvault.json'))
  }
  {
    name: 'Deploy-Diagnostics-LoadBalancer'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_loadbalancer.json'))
  }
  {
    name: 'Deploy-Diagnostics-LogAnalytics'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_loganalytics.json'))
  }
  {
    name: 'Deploy-Diagnostics-LogicAppsISE'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_logicappsise.json'))
  }
  {
    name: 'Deploy-Diagnostics-LogicAppsWF'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_logicappswf.json'))
  }
  {
    name: 'Deploy-Diagnostics-MariaDB'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_mariadb.json'))
  }
  {
    name: 'Deploy-Diagnostics-MediaService'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_mediaservice.json'))
  }
  {
    name: 'Deploy-Diagnostics-MlWorkspace'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_mlworkspace.json'))
  }
  {
    name: 'Deploy-Diagnostics-MySQL'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_mysql.json'))
  }
  {
    name: 'Deploy-Diagnostics-NetworkSecurityGroups'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_networksecuritygroups.json'))
  }
  {
    name: 'Deploy-Diagnostics-NIC'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_nic.json'))
  }
  {
    name: 'Deploy-Diagnostics-PostgreSQL'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_postgresql.json'))
  }
  {
    name: 'Deploy-Diagnostics-PowerBIEmbedded'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_powerbiembedded.json'))
  }
  {
    name: 'Deploy-Diagnostics-PublicIP'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_publicip.json'))
  }
  {
    name: 'Deploy-Diagnostics-RSV'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_recoveryservicesvault.json'))
  }
  {
    name: 'Deploy-Diagnostics-RedisCache'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_rediscache.json'))
  }
  {
    name: 'Deploy-Diagnostics-Relay'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_relay.json'))
  }
  {
    name: 'Deploy-Diagnostics-Search'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_search.json'))
  }
  {
    name: 'Deploy-Diagnostics-ServiceBus'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_servicebus.json'))
  }
  {
    name: 'Deploy-Diagnostics-SignalR'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_signalr.json'))
  }
  {
    name: 'Deploy-Diagnostics-SQLDB'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_sqldb.json'))
  }
  {
    name: 'Deploy-Diagnostics-SQLElasticPools'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_sqlelasticpools.json'))
  }
  {
    name: 'Deploy-Diagnostics-SQLMI'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_sqlmi.json'))
  }
  {
    name: 'Deploy-Diagnostics-StorageAccount'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_storage.json'))
  }
  {
    name: 'Deploy-Diagnostics-StreamAnalytics'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_streamanalytics.json'))
  }
  {
    name: 'Deploy-Diagnostics-TimeSeriesInsights'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_timeseriesinsights.json'))
  }
  {
    name: 'Deploy-Diagnostics-TrafficManager'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_trafficmanager.json'))
  }
  {
    name: 'Deploy-Diagnostics-VM'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_vm.json'))
  }
  {
    name: 'Deploy-Diagnostics-VMSS'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_vmss.json'))
  }
  {
    name: 'Deploy-Diagnostics-VirtualNetwork'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_virtualnetwork.json'))
  }
  {
    name: 'Deploy-Diagnostics-VNetGW'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_vnetgw.json'))
  }
  {
    name: 'Deploy-Diagnostics-WebServerFarm'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_webserverfarm.json'))
  }
  {
    name: 'Deploy-Diagnostics-Website'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_website.json'))
  }
  {
    name: 'Deploy-Diagnostics-WVDAppGroup'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_wvdappgroup.json'))
  }
  {
    name: 'Deploy-Diagnostics-WVDHostPools'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_wvdhostpools.json'))
  }
  {
    name: 'Deploy-Diagnostics-WVDWorkspace'
    libDefinition: json(loadTextContent('lib/policy_definitions/policy_definition_es_deploy_diagnostics_wvdworkspace.json'))
  }
]


  
// Policy Set/Initiative Definition Parameter Variables

var PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters = loadJsonContent('lib/policy_set_definitions/policy_set_definition_es_deploy_diagnostics_loganalytics.parameters.json')


// This variable contains a number of objects that load in the custom Azure Policy Set/Initiative Defintions that are provided as part of the ESLZ/ALZ reference implementation - this is automatically created in the file 'infra-as-code\bicep\modules\policy\lib\policy_set_definitions\_policySetDefinitionsBicepInput.txt' via a GitHub action, that runs on a daily schedule, and is then manually copied into this variable.
// Policy Set/Initiative Definition Parameter Variables
var customPolicySetDefinitionsArray = [

  {
    name: 'Deploy-Diagnostics-LogAnalytics'
    libSetDefinition: json(loadTextContent('lib/policy_set_definitions/policy_set_definition_es_deploy_diagnostics_loganalytics.json'))
    libSetChildDefinitions: [
      {
        definitionReferenceId: 'ACIDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ACI'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ACIDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'ACEDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ACE'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ACEDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'ACRDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ACR'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ACRDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'AKSDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AKS'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.AKSDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'AnalysisServiceDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AnalysisService'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.AnalysisServiceDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'APIforFHIRDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ApiForFHIR'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.APIforFHIRDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'APIMgmtDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-APIMgmt'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.APIMgmtDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'ApplicationGatewayDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ApplicationGateway'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ApplicationGatewayDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'AppServiceDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-WebServerFarm'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.AppServiceDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'AppServiceWebappDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Website'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.AppServiceWebappDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'AutomationDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-AA'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.AutomationDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'BastionDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Bastion'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.BastionDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'BatchDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Batch'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.BatchDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'CDNEndpointsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CDNEndpoints'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.CDNEndpointsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'CognitiveServicesDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CognitiveServices'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.CognitiveServicesDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'CosmosDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-CosmosDB'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.CosmosDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'DatabricksDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Databricks'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.DatabricksDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'DataExplorerClusterDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DataExplorerCluster'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.DataExplorerClusterDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'DataFactoryDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DataFactory'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.DataFactoryDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'DataLakeAnalyticsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DLAnalytics'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.DataLakeAnalyticsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'DataLakeStoreDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-DLStore'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.DataLakeStoreDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'EventGridSubDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventGridSub'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.EventGridSubDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'EventGridTopicDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventGridTopic'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.EventGridTopicDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'EventHubDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventHub'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.EventHubDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'EventSystemTopicDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-EventGridSystemTopic'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.EventSystemTopicDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'ExpressRouteDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ExpressRoute'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ExpressRouteDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'FirewallDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Firewall'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.FirewallDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'FrontDoorDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-FrontDoor'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.FrontDoorDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'FunctionAppDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Function'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.FunctionAppDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'HDInsightDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-HDInsight'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.HDInsightDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'IotHubDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-iotHub'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.IotHubDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'KeyVaultDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-KeyVault'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.KeyVaultDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'LoadBalancerDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LoadBalancer'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.LoadBalancerDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'LogAnalyticsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LogAnalytics'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.LogAnalyticsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'LogicAppsISEDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LogicAppsISE'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.LogicAppsISEDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'LogicAppsWFDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-LogicAppsWF'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.LogicAppsWFDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'MariaDBDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MariaDB'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.MariaDBDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'MediaServiceDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MediaService'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.MediaServiceDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'MlWorkspaceDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MlWorkspace'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.MlWorkspaceDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'MySQLDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-MySQL'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.MySQLDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'NetworkNICDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-NIC'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.NetworkNICDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'NetworkPublicIPNicDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PublicIP'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.NetworkPublicIPNicDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'NetworkSecurityGroupsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-NetworkSecurityGroups'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.NetworkSecurityGroupsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'PostgreSQLDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PostgreSQL'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.PostgreSQLDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'PowerBIEmbeddedDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-PowerBIEmbedded'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.PowerBIEmbeddedDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'RecoveryVaultDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-RSV'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.RecoveryVaultDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'RedisCacheDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-RedisCache'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.RedisCacheDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'RelayDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Relay'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.RelayDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'SearchServicesDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-Search'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.SearchServicesDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'ServiceBusDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-ServiceBus'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.ServiceBusDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'SignalRDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SignalR'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.SignalRDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'SQLDatabaseDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLDB'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.SQLDatabaseDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'SQLElasticPoolsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLElasticPools'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.SQLElasticPoolsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'SQLMDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-SQLMI'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.SQLMDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'StorageAccountDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-StorageAccount'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.StorageAccountDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'StreamAnalyticsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-StreamAnalytics'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.StreamAnalyticsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'TimeSeriesInsightsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-TimeSeriesInsights'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.TimeSeriesInsightsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'TrafficManagerDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-TrafficManager'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.TrafficManagerDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {	
        definitionReferenceId: 'VirtualMachinesDeployDiagnosticLogDeployLogAnalytics'	
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VM'	
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.VirtualMachinesDeployDiagnosticLogDeployLogAnalytics.parameters	
      }
      {
        definitionReferenceId: 'VirtualNetworkDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VirtualNetwork'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.VirtualNetworkDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {	
        definitionReferenceId: 'VMSSDeployDiagnosticLogDeployLogAnalytics'	
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VMSS'	
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.VMSSDeployDiagnosticLogDeployLogAnalytics.parameters	
      }
      {
        definitionReferenceId: 'VNetGWDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-VNetGW'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.VNetGWDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'WVDAppGroupDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-WVDAppGroup'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.WVDAppGroupDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'WVDHostPoolsDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-WVDHostPools'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.WVDHostPoolsDeployDiagnosticLogDeployLogAnalytics.parameters
      }
      {
        definitionReferenceId: 'WVDWorkspaceDeployDiagnosticLogDeployLogAnalytics'
        definitionId: '${targetManagementGroupResourceId}/providers/Microsoft.Authorization/policyDefinitions/Deploy-Diagnostics-WVDWorkspace'
        definitionParameters: PolicySetDefinitionEsDeployDiagnosticsLoganalyticsParameters.WVDWorkspaceDeployDiagnosticLogDeployLogAnalytics.parameters
      }
    ]
  }



// Resource: Policy Definitions
resource policyDefinitions 'Microsoft.Authorization/policyDefinitions@2023-04-01' = [
  for policy in customPolicyDefinitionsArray: {
    name: policy.libDefinition.name
    properties: {
      description: policy.libDefinition.properties.description
      displayName: policy.libDefinition.properties.displayName
      metadata: policy.libDefinition.properties.metadata
      mode: policy.libDefinition.properties.mode
      parameters: policy.libDefinition.properties.parameters
      policyType: policy.libDefinition.properties.policyType
      policyRule: policy.libDefinition.properties.policyRule
    }
  }
]

// // Resource: Policy Set Definitions
// resource policySetDefinitions 'Microsoft.Authorization/policySetDefinitions@2023-04-01' = [
//   for policySet in customPolicySetDefinitionsArray: {
//     dependsOn: [
//       policyDefinitions // Must wait for policy definitons to be deployed before starting the creation of Policy Set/Initiative Defininitions
//     ]
//     name: policySet.libSetDefinition.name
//     properties: {
//       description: policySet.libSetDefinition.properties.description
//       displayName: policySet.libSetDefinition.properties.displayName
//       metadata: policySet.libSetDefinition.properties.metadata
//       parameters: policySet.libSetDefinition.properties.parameters
//       policyType: policySet.libSetDefinition.properties.policyType
//       policyDefinitions: [
//         for policySetDef in policySet.libSetChildDefinitions: {
//           policyDefinitionReferenceId: policySetDef.definitionReferenceID
//           policyDefinitionId: policySetDef.definitionID
//           parameters: policySetDef.definitionParameters
//         }
//       ]
//       policyDefinitionGroups: policySet.libSetDefinition.properties.policyDefinitionGroups
//     }
//   }
// ]

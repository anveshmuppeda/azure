# Azure Data Factory  
• Azure Data Factory is Azure's cloud EL service for scale-out serverless data integration and data transformation. You can also lift and shift existing SSIS packages to Azure and run them with full compatibility in ADF.   
• It is the cloud-based EL and data integration service that allows you to create data-driven workflows for orchestrating data movement and transforming data at scale.  

Example: If we have a file in storageaccount and we want to copy the data of the file from one folder and paste it into the another folder within the same storageaccount.  In this case we can do it through the ADF.  

So in ADF we have pipelines which will do the above things.  

## Linkedservices  
Also we have Linkedservices which will help us to connect to the other Azure services.  

## Triggers  
Also we have triggers so that we can schedule the above pipelines. 
We have three types of pipelines.  
1. Scheduled Pipelines.(schedule the pipelines) 
2. Tumbling Window Trigger.(same as scheduled but we can schedule for past dates data)  
3. Event Based Pipelines. (based on event it will trigger)  

## Datasets  
Also we have  
Datasets  

## Activities  
Task which you want to perform like copy  

## Integration Runtime  
It is a bridge between activities and linkedservices, they perforrm their tasks on these integration runtimes  
### Types of IRs  
1. Azure  
2. Self Hosted IRs  
3. Azure-SSIS  
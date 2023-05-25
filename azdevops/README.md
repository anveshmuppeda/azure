## Create repos
## Setting up the default agent.
### Setup local agent on Windows x64
1. First download the reuqired agent on local machine from below [URL](https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-win-x64-3.220.2.zip).
https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-win-x64-3.220.2.zip
2. then run below commands
3. Create the agent
```
PS C:\> mkdir agent ; cd agent
PS C:\agent> Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$HOME\Downloads\vsts-agent-win-x64-3.220.2.zip", "$PWD")
```
4. Configure the agent[ Detailed instructions](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/windows-agent?view=azure-devops)
```
PS C:\agent> .\config.cmd
```
5. Optionally run the agent interactively
   If you didn't run as a service above(this will help us to make this agent online on portal):
```
PS C:\agent> .\run.cmd
```  
## PAT(Personal Access token):
1. Click on User settings from right corner on the console.  
2. Then click on Personal Access tokens.  
3. Then create New Token.  
Reference:  
![image](https://github.com/anveshmuppeda/azure/assets/115966808/50381803-0a19-452f-a82b-c7be4d9fa7ea)
```
>> Connect:

Enter server URL > https://dev.azure.com/muppedaanvesh
Enter authentication type (press enter for PAT) >
Enter personal access token > ****************************************************
Connecting to server ...

>> Register Agent:

Enter agent pool (press enter for default) >
Enter agent name (press enter for IT-5CD238KMXC) >
Scanning for tool capabilities.
Connecting to the server.
Successfully added the agent
Testing agent connection.
Enter work folder (press enter for _work) >
2023-05-25 02:35:21Z: Settings Saved.
Enter run agent as service? (Y/N) (press enter for N) >
Enter configure autologon and run agent on startup? (Y/N) (press enter for N) >
```
### Setup local agent on Linux
1. First download the reuqired agent on local machine from below [URL](https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-linux-x64-3.220.2.tar.gz).
https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-linux-x64-3.220.2.tar.gz
2. then run below commands
3. Create the agent
```
~/$ mkdir myagent && cd myagent
~/myagent$ tar zxvf ~/Downloads/vsts-agent-linux-x64-3.220.2.tar.gz
```
4. Configure the agent[ Detailed instructions](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/windows-agent?view=azure-devops)
```
~/myagent$ ./config.sh
```
5. Optionally run the agent interactively
   If you didn't run as a service above:
```
~/myagent$ ./run.sh
```
### Setup local agent on MacOS
1. First download the reuqired agent on local machine from below [URL](https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-osx-x64-3.220.2.tar.gz).
https://vstsagentpackage.azureedge.net/agent/3.220.2/vsts-agent-osx-x64-3.220.2.tar.gz
2. then run below commands
3. Create the agent
```
~/$ mkdir myagent && cd myagent
~/myagent$ tar zxvf ~/Downloads/vsts-agent-osx-x64-3.220.2.tar.gz
```
4. Configure the agent[ Detailed instructions](https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/windows-agent?view=azure-devops)
```
~/myagent$ ./config.sh
```
5. Optionally run the agent interactively
   If you didn't run as a service above:
```
~/myagent$ ./run.sh
```
That's it!


## Create and Run pipelines
1. Select the project.
2. Navigate to pipelines
3. Go to the new pipeline.
4. Select the Use the Classic Editor option.
5. Then Azure Repos Git
6. Then fill the required details(refer the below pictures)
7. Click on Coninue
8. Then select the template and Apply
9. For agent pool section select the Default one followed by Publish Artifact.
10. Then Save & Queue
11. Enter the Save Comment.
12. Then final step Click on Save and Run.  
  
Step 6:  
![image1](https://github.com/anveshmuppeda/azure/assets/115966808/02a853eb-edbd-4239-9791-e00a71622194)
  
Step 9:  
![image](https://github.com/anveshmuppeda/azure/assets/115966808/db573987-bdb6-409f-8fbe-03731965959c)  
  
Step 11 & 12:  
![image](https://github.com/anveshmuppeda/azure/assets/115966808/9736efcb-432a-4811-bcfb-2c560aff373e)  

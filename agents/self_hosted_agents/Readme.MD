# Self Hosted Agents on Kubernetes 

## Reference  
https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/docker?view=azure-devops

## Q & A  
How do you start docker-jobs like docker-compose. I can't start docker inside a container-agent.
The volume-mount doesen't work for me.  
The reason why it doesn't work is because since Kubernetes 1.19 the underlying container runtime is "containerd" as opposed to "docker". So you can't do DinD (Docker In Docker) anymore. I wonder whether running agents in Kubernetes is still a good idea, given that it limits the functionality that is available to you in your pipelines (nothing Docker based can be executed).  

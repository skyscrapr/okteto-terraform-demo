FROM okteto/pipeline-runner:1.0.0 

RUN apt-get update && \ 
  apt-get install unzip && \
  curl -o /tmp/awscli-exe-linux-x86_64.zip -L https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip && \
  unzip /tmp/awscli-exe-linux-x86_64.zip -d /tmp/aws-cli && \
  sh /tmp/aws-cli/aws/install && \
  aws --version && \
  curl -o /tmp/aws-sam-cli-linux-x86_64.zip -L https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip && \
  unzip /tmp/aws-sam-cli-linux-x86_64.zip -d /tmp/sam-installation && \
  sh /tmp/sam-installation/install && \
  sam --version
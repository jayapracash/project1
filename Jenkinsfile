node(){
    stage('test'){
        sh 'hostname'
    }
  stage('Checkout'){
      checkout scm 
  }
  stage('puppet install'){
      ansible-playbook -i hosts.yml puppet-playbook.yml
  }
  stage('Docker install'){
      ansible-playbook -i hosts.yml docker-playbook.yml
  }
  stage('php Container Deploy-Testserver'){
      ansible-playbook -i hosts.yml finalproject1-playbook.yml
  }
  
  stage('php Container Deploy-Prodserver'){
 //     ansible-playbook -i hosts.yml finalproject1-playbook.yml
        println "Prod Deploy Successfull"
  }
}

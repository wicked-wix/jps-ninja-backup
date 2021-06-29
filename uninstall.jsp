type: update
name: NinjaCloneUninstaller

#This script is downloaded and called from the onAfterClone script in the main script. Here we add the code that is to be 
#executed when an environment is cloned.

onInstall:
  - cmd[sqldb]:
    - wget -q -O - https://agents-api.s9s.io/static/install/linux.sh | bash -s -- uninstall; rm -rf /var/lib/backup-agent/
    user: root

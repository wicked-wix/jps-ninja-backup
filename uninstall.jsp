type: update
name: NinjaCloneUninstaller

onInstall:
  - cmd[sqldb]:
    - wget -q -O - https://agents-api.s9s.io/static/install/linux.sh | bash -s -- uninstall; rm -rf /var/lib/backup-agent/
    user: root

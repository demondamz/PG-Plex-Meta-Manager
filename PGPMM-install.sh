#bin/bash 
function plexmeta(){
    sudo git clone --quiet https://github.com/demondamz/PG-Plex-Meta-Manager.git /opt/plex-meta
    cd /opt/plex-meta
    sudo ansible-playbook ./plex-meta-manager.yml
    cp /opt/plex-meta/config.yml /opt/appdata/plex-meta-manager/app/config.yml
    cp /opt/plex-meta/Movies.yml /opt/appdata/plex-meta-manager/app/Movies.yml
    cp /opt/plex-meta/TV.yml /opt/appdata/plex-meta-manager/app/TV.yml
    cd /opt/appdata/plex-meta-manager
    rm -rf /opt/plex-meta
    sudo chown -cR 1000:1000 /opt/pgclone/ 1>/dev/null 2>&1
    sudo chmod -cR 755 /opt/pgclone 1>/dev/null 2>&1
    tee <<-EOF
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔️  Please stop the Container & Edit the config. 
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
}
plexmeta

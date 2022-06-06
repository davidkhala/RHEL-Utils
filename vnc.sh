install-server(){
  sudo yum install -y tigervnc-server
}
rdp(){
  sudo yum install -y xrdp
  sudo systemctl enable --now xrdp.service
  sudo firewall-cmd --permanent --add-port=3389/tcp 
  sudo firewall-cmd --reload
}
$@

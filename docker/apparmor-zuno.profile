#include <tunables/global>

profile zuno-marketplace flags=(attach_disconnected,mediate_deleted) {
  #include <abstractions/base>
  #include <abstractions/python>
  #include <abstractions/openssl>
  #include <abstractions/nameservice>

  # Docker socket
  deny /var/run/docker.sock rw,

  # Application directories
  /app/** r,
  /app/backend/{,**} r,
  /app/frontend/{,**} r,
  /app/encrypted_images/{,**} rw,
  
  # ZFS storage
  /zfs/marketplace/{,**} rw,
  
  # Tor hidden service
  /var/lib/tor/{,**} rw,
  
  # Python
  /usr/bin/python3 rix,
  /usr/local/bin/python3 rix,
  /usr/local/lib/python3.*/{,**} r,
  
  # Node.js
  /usr/bin/node rix,
  /usr/local/bin/node rix,
  
  # System
  /proc/sys/kernel/random/uuid r,
  /sys/kernel/mm/transparent_hugepage/hpage_pmd_size r,
  
  # Networking
  network tcp,
  network udp,
  
  # Deny access to sensitive directories
  deny /root/** rwklx,
  deny /etc/shadow rwklx,
  deny /etc/passwd rwklx,
  deny /etc/group rwklx,
  deny /etc/gshadow rwklx,
  
  # Deny write access to system directories
  deny /bin/** wl,
  deny /sbin/** wl,
  deny /usr/bin/** wl,
  deny /usr/sbin/** wl,

  # Capabilities
  capability net_bind_service,
  capability setuid,
  capability setgid,
  
  # Deny other capabilities
  deny capability sys_admin,
  deny capability sys_ptrace,
  deny capability sys_module,
  deny capability sys_rawio,
}

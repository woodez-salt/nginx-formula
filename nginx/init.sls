{% if grains['os_family'] == 'RedHat' %}
install_nginx_repo:
  file.managed:
    - name: /etc/yum.repos.d/nginix.repo
    - source: salt://nginx/files/nginx.repo

nginx_install:
  pkg.installed:
    - pkgs: 
      - nginx

start_nginx:
  service.running:
    - name: nginx
    - enable: True
{% endif %}

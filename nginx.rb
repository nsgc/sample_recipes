remote_file '/tmp/nginx.repo' do
  source 'files/nginx.repo'
end

execute 'sudo mv /tmp/nginx.repo /etc/yum.repos.d'

package 'nginx'

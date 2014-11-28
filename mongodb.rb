remote_file '/tmp/mongodb.repo' do
  source 'files/mongodb.repo'
end

execute 'sudo mv /tmp/mongodb.repo /etc/yum.repos.d'

package 'mongodb-org'

service 'mongod' do
  action :start
end

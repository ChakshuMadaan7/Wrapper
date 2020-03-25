package 'python' do
  action :install
end

directory 'var/pyth'
remote_file 'var/pyth/python' do 
  source 'https://bootstrap.pypa.io/get-pip.py'
  path '/var/pyth/get-pip.py'
  action :create
end


execute 'python' do
  command 'python get-pip.py'
  cwd '/var/pyth'
   not_if 'ps -ef | grep python get-pip.py'
end


package 'python-yaml' do
  action :install
end

tomcat_install 'helloworld' do
  version '8.0.36'
  verify_checksum false
  tarball_base_uri 'http://archive.apache.org/dist/tomcat/'
  tarball_path '/tmp/apache-tomcat-8.0.36.tar.gz'
end

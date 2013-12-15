node default {
  hiera_include('classes')
  $php_ini_instances = hiera('php_ini', [])
  create_resources('php::ini',$php_ini_instances)
  $php_modules = hiera('php_modules', [])
  create_resources('php::module',$php_modules)
  $rvm_gems = hiera('rvm_gems', [])
  create_resources('rvm_gem',$rvm_gems)
  $rvm_versions = hiera('rvm_system_rubys', [])
  create_resources('rvm_system_ruby',$rvm_versions)
}
node default {
  hiera_include('classes')
  $php_ini_instances = hiera('php_ini', [])
  create_resources('php::ini',$php_ini_instances)
  $php_modules = hiera('php_modules', [])
  create_resources('php::module',$php_modules)
}

class kibana{
  exec { "extract kibana":
    command => "wget http://download.elasticsearch.org/kibana/kibana/kibana-latest.zip -O /tmp/kibana-latest.zip && unzip /tmp/kibana-latest.zip -d /var/www",
    creates => "/var/www/kibana-latest",
    require => [
        Package['apache2', 'unzip', 'wget']
      ],
  }

  package { 'apache2': }
  package { 'unzip': }
  package { 'wget': }
}
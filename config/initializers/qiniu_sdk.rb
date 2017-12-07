require 'qiniu'

Qiniu.establish_connection! :access_key => 'uy6h3PZEAKG23ZKuVHqn4f_Y30NoLgSvNwvDPuL-',
                            :secret_key => 'Ul7TutlMncTg9tFHuPG_kCr92PdPd-BdtAjyvgZ5'

Rails.application.config.qiniu_domain = "ad-sapce"

print "establish qiniu connection \n"
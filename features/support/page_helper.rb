Dir[File.join(File.dirname(__FILE__),
              "../pages/*_page.rb")].each { |file| require file }

Dir[File.join(File.dirname(__FILE__),
              "../interface/*_framework.rb")].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages
end

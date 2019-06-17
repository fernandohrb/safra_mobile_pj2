Before do
  $driver = $appium_driver.start_driver
end

After do
  $driver.driver_quit
end

#cucumber --t @teste AMBIENTE=homologacao --format AllureCucumber::Formatter --out=test_report
#allure serve test_report

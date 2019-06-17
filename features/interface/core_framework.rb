module CoreFramework
  
  @@loading = "//android.widget.ProgressBar[@class='android.widget.ProgressBr']"
  @@loading2 = "com.safra.mobile.pj:id/progressBarSplash"
  
  def find(elemento)
    wait_true(timeout: 120, interval: 0.5) { $driver.find_element(:xpath, elemento) }
  end
  
  def aguardar_loading
    # if $driver.find_element(:id, @@loading2).focusable?
    #   while $driver.find_element(:id, @@loading2).focusable?
    #     begin
    #       puts "loading"
    #     rescue
    #       puts "pag carregada"
    #     end
    #   end
    # end
    sleep(20)
  end

  def scroll
  Appium::TouchAction.new.swipe(start_x: 144, start_y: 400, end_x: 40, end_y: 30).perform
  end 
end


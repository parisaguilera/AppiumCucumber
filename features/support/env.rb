require "appium_lib"
require "pry"

def caps
    {   caps: {
            deviceName: "iPhone 8 Plus",
            platformName: "iOS",
            platformVersion: "13.0",
            app: (File.join(File.dirname(__FILE__), "freeAPP.app")),
            bundleId: "com.freeAPP.freeAPP",
            autoAcceptAlerts: true,
            noReset: true,
            newCommandTimeout: 3600
            #Ver TODO lo que hace appium por cada secuencia
            #desiredCapabilities: true,
            #showXcodeLog: true
    }   }
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object
$driver.start_driver
def app_path
  ENV['APP_BUNDLE_PATH'] || (defined?(APP_BUNDLE_PATH) && APP_BUNDLE_PATH)
end

Given /^I launch the app$/ do
  # latest sdk and iphone by default
  launch_app app_path
end

Given /^I launch the app using iOS (\d\.\d)$/ do |sdk|
  # You can grab a list of the installed SDK with sim_launcher
  # > run sim_launcher from the command line
  # > open a browser to http://localhost:8881/showsdks
  # > use one of the sdk you see in parenthesis (e.g. 4.2)
  launch_app app_path, sdk
end

Given /^I launch the app using iOS (\d\.\d) and the (iphone|ipad) simulator$/ do |sdk, version|
  launch_app app_path, sdk, version
end


Given /^I reset the (iphone|ipad) app$/ do |device|
  steps "When I quit the simulator"
  SDK    = "7.0.3"
  APPNAME = "EnergieMonitor"
  APPLICATIONS_DIR = "/Users/#{ENV['USER']}/Library/Application\ Support/iPhone\ Simulator/#{SDK}/Applications"
  USERDEFAULTS_PLIST =
  "Library/Preferences/com.infinum.oxxio.frankified.plist"
  Dir.foreach(APPLICATIONS_DIR) do |item|
    next if item == '.' or item == '..'
    if File::exists?(
    "#{APPLICATIONS_DIR}/#{item}/#{USERDEFAULTS_PLIST}")
      FileUtils.rm "#{APPLICATIONS_DIR}/#{item}/#{USERDEFAULTS_PLIST}" 
    end
  end
  #steps "Given I launch the #{device} app"
  steps "Given I launch the app"
end
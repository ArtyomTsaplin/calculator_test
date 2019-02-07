#Readme

* To run calculator please use ruby calculator.rb

* To run test please run bundle exec rspec (do not forget to run bundle install before)

* To add additional command please add a class nested fro CommandBase to the commands directory and implement .pattern and .apply methods for specific command

* to add another command source add a class nested from SourceBase and implement .read and .exit_command? methods. Then you can use this source in calculator.rb

Please note that this is the test project and it's not fully covered by tests and contains some simplifications to reduce development time.
# SeleniumLogin

## Description
The example uses the Selenium library to open the Firefox web browser, access a web page
and check if the login was successful.

The [Python example](python/seleniumLogin.py) is straight forward, just use
the python command to run the file and the automation should start:
```console 
python .\examples\seleniumLogin\python\seleniumLogin.py
```

The Robot Framework has 3 examples:
- [example1](robotFramework/example1/seleniumLogin.robot) uses only library keywords, it is similar to the [Python version](python/seleniumLogin.py) as such.<br> To run example1, enter the following command:
  ```console
  robot -d results .\examples\seleniumLogin\robotFramework\example1\seleniumLogin.robot
  ```
- [example2](robotFramework/example2/seleniumLogin.robot) is identical with example1, but it also uses user keywords. <br> To run example2, enter the following command:
  ```console
  robot -d results .\examples\seleniumLogin\robotFramework\example2\seleniumLogin.robot
  ```
- [example3](robotFramework/example3/seleniumLogin.robot): is identical with example2, but the user keywords, variables and library imports are moved to their own resource file. <br> To run example3, enter the following command:
  ```console
  robot -d results .\examples\seleniumLogin\robotFramework\example3\seleniumLogin.robot
  ```
## Note
- To run the examples, you also need to download [Firefox (Gecko) Webdriver](https://github.com/mozilla/geckodriver/releases) and add it to your system path.
- The above Robot Framework commands also generate the report files.
- The Robot Framework examples are also optimized for the RIDE IDE.
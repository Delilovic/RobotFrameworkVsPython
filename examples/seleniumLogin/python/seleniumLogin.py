"""
The example uses the Selenium library and pure Python to log in to the specified website and check if the login was successful.
"""

# Include libraries
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait

# Define variables
url = "https://www.stealmylogin.com/demo.html"
username = "testUsername"
password = "testPassword"

# Initialize webdriver
driver = webdriver.Firefox()
driver.get(url)

# Enter username and password
driver.find_element(by=By.NAME, value="username").send_keys(username)
driver.find_element(by=By.NAME, value="password").send_keys(password)

# Press submit button
driver.find_element(by=By.XPATH, value="/html/body/form/input[3]").submit()

# Expect "Example Domain" title on the next page
WebDriverWait(driver, 5).until(expected_conditions.title_is("Example Domain"))

# Close the Firefox browser
driver.close()

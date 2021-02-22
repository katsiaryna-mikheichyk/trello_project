Description: Creation of trello users

Scenario: Create account

Given I am on the main application page
When I click on an element by the xpath '/html/body/header/nav/div/a[2]'
When I enter `<Useremail>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<Fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<Password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span/span/span)`
Then the page with the URL containing 'https://id.atlassian.com/signup?application=trello&continue=https://trello.com/auth/atlassian/callback?' is loaded


Examples:
|Useremail                         |Fullname                  |Password                                 |
|miikate9708@gmail.com             |Katerina                  |Passwd11!!!                              |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[abcdefghigk]{10}')}|

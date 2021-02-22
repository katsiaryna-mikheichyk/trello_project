Description: Sign in with user and verify pages

GivenStories: story/web/1SignUpuserPrecondition.story

Scenario: Sign in

Given I am on the main application page
When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
When I enter `katsiarynm@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//*[@id="login"])` appears
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="form-login"]/div[2]/div/div/div/div/div/div)` appears
When I enter `Passwd!!!1` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"]/span/span)`
When I wait until element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[1]/ul/li[1]/a/span[2])` appears
Then the page with the URL 'https://trello.com/kate64853393/boards' is loaded

Scenario: Verify profile

Given I am on a page with the URL 'https://trello.com/kate64853393/boards'
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)`
When I wait until element located `By.xpath(/html/body/div[4]/div/section/header/div)` appears
Then the text 'Kate' exists
Then the text 'katsiarynm@gmail.com' exists

Scenario: Verify Page 1
Given I am on a page with the URL 'https://trello.com/kate64853393/boards'
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div)`
When I click on element located `By.xpath(/html/body/div[4]/div/section/div/nav/ul/li[2]/a)`
When I wait until element located `By.xpath(//img[contains(@src,'images/member-home')])` appears
When I change context to element located `By.xpath(//img[contains(@src,'images/member-home')])`
When I COMPARE_AGAINST baseline with `Profile-Page`

Scenario: Verify Page 2
Given I am on a page with the URL 'https://trello.com/kate64853393'
When I click on element located `By.xpath(//*[@id="header"]/div[1]/a/span)`
When I click on element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[1]/ul/li[2]/a)`
When I wait until element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[2]/div[3]/div[1])` appears
When I change context to element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[2]/div[3]/div[1])`
When I COMPARE_AGAINST baseline with `Home-page2`

Scenario: Verify Page 3
Given I am on a page with the URL 'https://trello.com/'
When I click on element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[2]/div/ul/li/ul/li[1]/a)`
When I wait until element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div/div[2]/div)` appears
When I change context to element located `By.xpath(//*[@id="content"]/div/div/div/div[2]/div/div/div[2]/div)`
When I COMPARE_AGAINST baseline with `Getting-Started`

Scenario: Verify Page 4
Given I am on a page with the URL 'https://trello.com/taco37601441/getting-started'
When I click on element located `By.xpath(//*[@id="content"]/div/div/div/div[1]/nav/div[2]/div/ul/li/ul/li[6]/a)`
When I wait until element located `By.xpath(//*[@id="content"]/div[3]/div[1]/div/div)` appears
When I change context to element located `By.xpath(//*[@id="content"]/div[3]/div[1]/div/div)`
When I COMPARE_AGAINST baseline with `Settings`

Scenario: Verify Page 5
Given I am on a page with the URL 'https://trello.com/taco37601441/account'
When I click on element located `By.xpath(//*[@id="content"]/div[3]/div[2]/ul/li[3]/a)`
When I click on element located `By.xpath(//*[@id="content"]/div[3]/div[3]/div[2]/div/div/div/div[1]/div[1]/div/div/div/ul/li[2]/a)`
When I wait until element located `By.xpath(//*[@id="content"]/div[3]/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div)` appears
When I change context to element located `By.xpath(//*[@id="content"]/div[3]/div[3]/div[2]/div/div/div/div[2]/div/div[2]/div)`
When I COMPARE_AGAINST baseline with `Guest-members`

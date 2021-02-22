Description: Composite steps and API creation board

Scenario: Sign in

Given I am on the main application page
When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
When I fill <Useremail>, <Password> in registration form
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[1]/ul/li[1]/a/span[2])` appears 
Then the page with the URL 'https://trello.com/kate64853393/boards' is loaded
When I find <= '1' elements by By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[2]/div/ul/li/ul/li[6]/a) and for each element do
|step|
|When I click on element located `By.xpath(//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[2]/div/ul/li/ul/li[6]/a)`|
Then the page with the URL 'https://trello.com/taco37601441/account' is loaded
Then the text 'Taco' exists

Examples:
|Useremail           |Password  |
|katsiarynm@gmail.com|Passwd!!!1|


Scenario: API creation of board
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=${key}&token=${token}&name=${boardName}'
Then `${responseCode}` is equal to `200`


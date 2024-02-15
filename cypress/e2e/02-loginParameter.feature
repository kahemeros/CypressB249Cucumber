Feature: ToolShop Login Testleri

Scenario: Admin hesabi icin gecerli verilerle login testi - String parametre kullanarak
    Given Ben ToolShop sitesine giderim
        When Sign in linkine tiklarim
        And Email alanina "admin@practicesoftwaretesting.com" yazarim
        And Password alanina "welcome01" yazarim
        And Login butonuna tiklarim
        Then Site URL'inde "admin" ve "dashboard" kelimelerinin gectigini dogrularim



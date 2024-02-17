@regression
Feature: ToolShop Login Testleri
    # Bir test suite'te birden fazla scenario'da aynı adımlar tekrar ediliyorsa bu adımlar Background içine alınabilir (beforeEach() gibi)
    Background: Login sayfasina gitme
        Given Ben ToolShop sitesine giderim
        When Sign in linkine tiklarim

    Scenario: Admin hesabi icin gecerli verilerle login testi - String parametre kullanarak
        And Email alanina "admin@practicesoftwaretesting.com" yazarim
        And Password alanina "welcome01" yazarim
        And Login butonuna tiklarim
        Then Site URL'inde "admin" ve "dashboard" kelimelerinin gectigini dogrularim

    Scenario: Customer hesabi icin gecerli verilerle login testi - String parametre kullanarak
        And Email alanina "customer@practicesoftwaretesting.com" yazarim
        And Password alanina "welcome01" yazarim
        And Login butonuna tiklarim
        Then Site URL'inde "#" ve "account" kelimelerinin gectigini dogrularim
    @smoke
    Scenario: Admin hesabi icin gecersiz verilerle login testi - int parametre kullanarak
        And Email alanina "admin@practicesoftwaretesting.com" yazarim
        And Password alanina 12345678 yazarim
        And Login butonuna tiklarim

    Scenario: Admin hesabi icin gecersiz verilerle login testi - int parametre kullanarak
        And Email alanina "admin@practicesoftwaretesting.com" yazarim
        And Password alanina 658795464 yazarim
        And Login butonuna tiklarim


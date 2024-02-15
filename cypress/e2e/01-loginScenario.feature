Feature: ToolShop Login Testleri
# feature, description'a benzer. (test suite)
# scenario, it bloguna benzer. (it blokları)
# Çalışılan her bir sayfaya ait testler, ilgili sayfaya ait step definition sayfasına eklenir.

    # POZİTİF SENARYO
    Scenario: Admin hesabi icin gecerli verilerle login testi
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanina bir email yazarim
    # Bu ve bundan sonraki locate ve method'lar (homepage değil) login sayfasında olduğu için LoginPage_Step.js sayfasına method'larımızı ve locate'lerimizi ekliyoruz
    And Password alanina bir password yazarim
    And Login butonuna tiklarim
    Then Dashboard sayfasinin acildigini dogrularim
    And Site URL'inde admin ve dashboard kelimelerinin gectigini dogrularim

    # NEGATİF SENARYO
    Scenario: Email alani bos birakilarak login testi
    Given Ben ToolShop sitesine giderim
    When Sign in linkine tiklarim
    And Email alanini bos birakirim
    And Password alanina bir password yazarim
    And Login butonuna tiklarim
    Then Email'in gerekli oldugunu soyleyen bir hata mesaji gorurum

using System;
using TechTalk.SpecFlow;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium;

namespace PPCRental.AcceptanceTests.StepsDefinition
{
    [Binding]
    public class ViewDetailSteps
    {
        public IWebDriver _driver = new ChromeDriver();
        [Given(@"I access to PPCRental Website")]
        public void GivenIAccessToPPCRentalWebsite()
        {
            _driver.Url = "http://localhost:49533/Home/Index";
        }
        
        [When(@"I press on view detail buttonts")]
        public void WhenIPressOnViewDetailButtonts()
        {
            _driver.FindElement(By.XPath("/html/body/div/div[2]/div[1]/div/div/p[2]/a")).Click();
        }
        
        [Then(@"The Website shows peoject detail")]
        public void ThenTheWebsiteShowsPeojectDetail()
        {
            //_driver.Quit();
        }
    }
}

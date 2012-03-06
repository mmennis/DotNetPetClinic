using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;

namespace DotNetPetClinic.Controllers
{
    public class WeatherController : Controller
    {
        //
        // GET: /Weather/

        public ActionResult Index()
        {
            var locations = new List<string> { 
                 "94041", "90008", "97202", "94110", "10024",
                 "02111", "60605", "23454", "32804", "75204",
                 "98112"};

            ViewBag.Forecasts = new List<string>();
            foreach (String zipcode in SelectZipcodes(locations, 5))
            {
                XmlDocument doc = new XmlDocument();
                doc.Load("http://xml.weather.yahoo.com/forecastrss?p=" + zipcode);

                XmlNamespaceManager ns = new XmlNamespaceManager(doc.NameTable);
                ns.AddNamespace("yweather", "http://xml.weather.yahoo.com/ns/rss/1.0");

                XmlNodeList nodes = doc.SelectNodes("rss/channel/item/title", ns);
                foreach (XmlNode node in nodes)
                {
                    ViewBag.Forecasts.Add(node.InnerText);
                }

                nodes = doc.SelectNodes("rss/channel/item/yweather:forecast", ns);
                foreach (XmlNode node in nodes)
                {
                    string msg = node.Attributes["day"].InnerText + ": ";
                    msg += node.Attributes["text"].InnerText + ", ";
                    msg += node.Attributes["low"].InnerText + "F - ";
                    msg += node.Attributes["high"].InnerText + "F";
                    ViewBag.Forecasts.Add(msg);
                }
            }

            return View();
        }


        private List<E> SelectZipcodes<E>(List<E> inputList, int count)
        {
            List<E> returnList = new List<E>();

            Random r = new Random();
            int randomIndex = 0;
            for (int i = 0; i < count; i++)
            {
                randomIndex = r.Next(0, inputList.Count);
                returnList.Add(inputList[randomIndex]);
                inputList.RemoveAt(randomIndex);
            }
            return returnList;
        }
    }
}

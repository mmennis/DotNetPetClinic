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
            XmlDocument doc = new XmlDocument();
            doc.Load("http://xml.weather.yahoo.com/forecastrss?p=94041");

            XmlNamespaceManager ns = new XmlNamespaceManager(doc.NameTable);
            ns.AddNamespace("yweather", "http://xml.weather.yahoo.com/ns/rss/1.0");

            XmlNodeList nodes = doc.SelectNodes("rss/channel/item/yweather:forecast", ns);

            ViewBag.Message = "Weather for Mountain View:";
            foreach (XmlNode node in nodes)
            {
                ViewBag.Message += node.Attributes["day"].InnerText + ": ";
                ViewBag.Message += node.Attributes["text"].InnerText + ", ";
                ViewBag.Message += node.Attributes["low"].InnerText + "F - ";
                ViewBag.Message += node.Attributes["high"].InnerText + "F";
            }

            return View();
        }

    }
}

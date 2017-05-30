using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.ServiceModel.Syndication;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Xml.Linq;
using webanhnguyen.common;
using webanhnguyen.Models;

namespace webanhnguyen.Controllers
{
    public class BlogController : BaseController
    {
        // GET: Blog
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PostFeed(string type)
        {
            tbl_NewsCategory category = db.tbl_NewsCategories.Where(s => s.Alias.Contains(type)).FirstOrDefault();
            if (category == null)
            {
                return HttpNotFound();
            }
            IEnumerable<tbl_Article> posts = (from s in db.tbl_Articles where s.Alias.Contains(type) select s).ToList();
            var feed = new SyndicationFeed(category.Name, "RSS Feed", new Uri("http://vnexpress.net/rss"), Guid.NewGuid().ToString(), DateTime.Now);
            var items = new List<SyndicationItem>();
            foreach (tbl_Article art in posts)
            {
                string postUrl = String.Format("http://vnexpress.net/" + art.Alias + "{-0}", art.Id);
                var item = new SyndicationItem(Helper.RemoveIllegalCharacters(art.Title), Helper.RemoveIllegalCharacters(art.Decription), new Uri(postUrl), art.Id.ToString(), art.DatePublished.Value);
                items.Add(item);
            }
            feed.Items = items;
            return new RSSActionResult { Feed = feed};
        }
        public ActionResult ReadRSS()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ReadRSS(string url)
        {
            WebClient wclient = new WebClient();
            wclient.Encoding = ASCIIEncoding.UTF8;
            string RSSData = wclient.DownloadString(url);

            XDocument xml = XDocument.Parse(RSSData, LoadOptions.PreserveWhitespace);
            var RSSFeedData = (from x in xml.Descendants("item")
                               select new RSSFeed
                               {
                                   Title = ((string)x.Element("title")),
                                   Link = ((string)x.Element("link")),
                                   Description = ((string)x.Element("description")),
                                   PubDate = ((string)x.Element("pubDate"))
                               });
            ViewBag.RSSFeed = RSSFeedData;
            ViewBag.URL = url;
            return View();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace webanhnguyen
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                "PostFeed",
                "Feed/{type}",
                new { controller = "Blog", action = "PostFeed", type = "blog.rss" }
            );
            routes.MapRoute(
                "chi tiet sach",
                "{alias}-{id}",
                new { controller = "Home", action = "Details" }, new {id = @"\d+"}
            );
            routes.MapRoute(
             name: "sach hay",
             url: "sach-hay/{id}",
             defaults: new { controller = "Home", action = "ProductType"}
         );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}/{ignoreThisBit}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional, ignoreThisBit = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Admin",
                url: "Admin/{controller}/{action}/{id}",
                defaults: new { controller = "Admin", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}

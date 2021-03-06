﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webanhnguyen.Controllers
{
    public class DataHelper
    {
        //Model class
        public class ShoppingCardItemModel
        {
            public String name, image, alias;
            public int id, quantity, orderid, modelid;
            public decimal price, total;
        }
        public class ItemModel
        {
            public Models.tbl_Product product;
            public String categoryName;
            
        }

        //Helper classes
        public class GeneralHelper
        {
            static GeneralHelper instance;
            public static GeneralHelper getInstance()
            {
                if (instance == null)
                {
                    instance = new GeneralHelper();
                }
                return instance;
            }
            public string RemoveUnicode(string text)
            {
                string[] arr1 = new string[] { "á", "à", "ả", "ã", "ạ", "â", "ấ", "ầ", "ẩ", "ẫ", "ậ", "ă", "ắ", "ằ", "ẳ", "ẵ", "ặ",
    "đ",
    "é","è","ẻ","ẽ","ẹ","ê","ế","ề","ể","ễ","ệ",
    "í","ì","ỉ","ĩ","ị",
    "ó","ò","ỏ","õ","ọ","ô","ố","ồ","ổ","ỗ","ộ","ơ","ớ","ờ","ở","ỡ","ợ",
    "ú","ù","ủ","ũ","ụ","ư","ứ","ừ","ử","ữ","ự",
    "ý","ỳ","ỷ","ỹ","ỵ",};
                string[] arr2 = new string[] { "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
    "d",
    "e","e","e","e","e","e","e","e","e","e","e",
    "i","i","i","i","i",
    "o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",
    "u","u","u","u","u","u","u","u","u","u","u",
    "y","y","y","y","y",};
                for (int i = 0; i < arr1.Length; i++)
                {
                    text = text.Replace(arr1[i], arr2[i]);
                    text = text.Replace(arr1[i].ToUpper(), arr2[i].ToUpper());
                }

                string chuoikytudacbiet = "~!@#$%^&*()Ơ}|:\"?><\\/-_+=[]';`.,";
                char[] mangkytudacbiet = chuoikytudacbiet.ToCharArray();
                for(int i = 0; i < mangkytudacbiet.Length; i++)
                {
                    text = text.Replace(mangkytudacbiet[i],'-');
                }
                text = text.Replace(" ", "-");
                return text;
            }

            public string getAliasFromProductTypeName(Models.databaseDataContext data, String name)
            {
                if (String.IsNullOrEmpty(name))
                    return "";
                String alias = RemoveUnicode(name);
                var record = from ic in data.tbl_product_types
                             where ic.alias.Equals(alias)
                             select ic;
                if (record != null)
                {
                    int count = record.Count();
                    if (count > 0)
                    {
                        alias += "-" + count;
                    }
                }

                return alias;
            }

            public string getAliasFromProductName(Models.databaseDataContext data, String name)
            {
                if (String.IsNullOrEmpty(name))
                    return "";
                String alias = RemoveUnicode(name);
                var record = from ic in data.tbl_Products
                             where ic.alias.Equals(alias)
                             select ic;
                if (record != null)
                {
                    int count = record.Count();
                    if (count > 0)
                    {
                        alias += "-" + count;
                    }
                }

                return alias;
            }

            public string getAliasFromInformationName(Models.databaseDataContext data, String name)
            {
                if (String.IsNullOrEmpty(name))
                    return "";
                String alias = RemoveUnicode(name);
                var record = from ic in data.tbl_informations
                             where ic.alias.Equals(alias)
                             select ic;
                if (record != null)
                {
                    int count = record.Count();
                    if (count > 0)
                    {
                        alias += "-" + count;
                    }
                }

                return alias;
            }
            public string getAliasFromNewsName(Models.databaseDataContext data, String name)
            {
                if (String.IsNullOrEmpty(name))
                    return "";
                String alias = RemoveUnicode(name);
                var record = from ic in data.tbl_news
                             where ic.alias.Equals(alias)
                             select ic;
                if (record != null)
                {
                    int count = record.Count();
                    if (count > 0)
                    {
                        alias += "-" + count;
                    }
                }

                return alias;
            }

            public void saveCSSFile(string text)
            {
                System.IO.File.WriteAllText(HttpContext.Current.Server.MapPath("~/Content/standalone.4e1f1fad754ebc0bdb148ced149d7f731458555519.css"), text);
            }

            public string readCSSFile()
            {
                return System.IO.File.ReadAllText(HttpContext.Current.Server.MapPath("~/Content/standalone.4e1f1fad754ebc0bdb148ced149d7f731458555519.css"));
            }
        }

        public class NewsHelper
        {
            static NewsHelper instance;
            public static NewsHelper getInstance()
            {
                if (instance == null)
                {
                    instance = new NewsHelper();
                }
                return instance;
            }

            public void deleteAllNews(Models.databaseDataContext data)
            {
                data.tbl_news.DeleteAllOnSubmit(data.tbl_news);
                data.SubmitChanges();

            }
            public int getNewsAmount(Models.databaseDataContext data)
            {
                return data.tbl_news.Count();
            }

            public Models.tbl_new getNewsById(Models.databaseDataContext data, int id)
            {
                Models.tbl_new result = data.tbl_news.Where(n => n.id == id).Single();
                return result;
            }
        }

        public class ProductHelper
        {
            static ProductHelper instance;
            public static ProductHelper getInstance()
            {
                if (instance == null)
                {
                    instance = new ProductHelper();
                }
                return instance;
            }

            public void deleteAllProductCategory(Models.databaseDataContext data)
            {
                deleteAllProduct(data);

                data.tbl_product_types.DeleteAllOnSubmit(data.tbl_product_types);
                data.SubmitChanges();
            }

            public void deleteAllProduct(Models.databaseDataContext data)
            {
                //ShoppingCardHelper.getInstance().deleteAllOrderDetails(data);

                data.tbl_Products.DeleteAllOnSubmit(data.tbl_Products);
                data.SubmitChanges();
            }

            public int getProductsAmount(Models.databaseDataContext data)
            {
                return data.tbl_Products.Count();
            }

            public int getProductCategoryAmount(Models.databaseDataContext data)
            {
                return data.tbl_product_types.Count();
            }


            public Models.tbl_Product getProductById(Models.databaseDataContext data, int id)
            {
                Models.tbl_Product result = data.tbl_Products.Where(n => n.ID == id).Single();
                return result;
            }

            public Models.tbl_product_type getProductCategoryById(Models.databaseDataContext data, int id)
            {
                Models.tbl_product_type result = data.tbl_product_types.Where(n => n.ID == id).Single();
                return result;
            }

            public List<Models.tbl_Product> getListAllProducts(Models.databaseDataContext data)
            {
                return data.tbl_Products.OrderByDescending(a => a.NgayCapNhat).ToList();
            }

            public List<Models.tbl_Product> getListProductsByCategory(Models.databaseDataContext data, int idProductType)
            {
                return data.tbl_Products.OrderByDescending(a => a.NgayCapNhat).Where(n => n.IDLoaiSP == idProductType).ToList();
            }

            public List<Models.tbl_Product> getListOtherProductsByCategory(Models.databaseDataContext data, int id, int idProductType)
            {
                return data.tbl_Products.OrderByDescending(a => a.NgayCapNhat).Where(n => n.IDLoaiSP == idProductType && n.ID != id).ToList();
            }
        }

        public class AccountHelper
        {
            static AccountHelper instance;
            public static AccountHelper getInstance()
            {
                if (instance == null)
                {
                    instance = new AccountHelper();
                }
                return instance;
            }

            public Models.Customer getMemberAccountByEmail(Models.databaseDataContext data, string email)
            {
                Models.Customer result = data.Customers.Where(n => n.email.Equals(email)).Single();
                return result;
            }

            public string getLoggingInMemberEmail(HttpContextBase context)
            {
                Object session = context.Session[Constants.KEY_SESSION_MEMBER_USERNAME];
                if (session != null && !String.IsNullOrEmpty(session.ToString()))
                {
                    return session.ToString();
                }
                return "";
            }

            public bool loginAdmin(Models.databaseDataContext data, string username, string password)
            {
                return checkThisAdminAccountExist(data, username, password);
            }

            public int getMemberAccountAmount(Models.databaseDataContext data)
            {
                return data.Customers.Count();
            }

            public bool checkThisAdminAccountExist(Models.databaseDataContext data, string username, string password)
            {
                var result = data.tbl_admins.Where(a => a.Username.Equals(username) && a.Password == password);
                if (result.Count() > 0)
                {
                    return true;
                }
                return false;
            }

            public bool checkIsAdminLoggingIn(HttpContextBase context)
            {
                Object session = context.Session[Constants.KEY_SESSION_ADMIN_USERNAME];
                if (session != null && !String.IsNullOrEmpty(session.ToString()))
                {
                    return true;
                }
                return false;
            }

            public void logoutAdmin(BaseAdminController context)
            {
                context.Session[Constants.KEY_SESSION_ADMIN_USERNAME] = null;
            }

            public void deleteAllCustomers(Models.databaseDataContext data)
            {
                data.Customers.DeleteAllOnSubmit(data.Customers);
                data.SubmitChanges();
            }

            public void deleteAllAdmins(Models.databaseDataContext data)
            {
                data.tbl_admins.DeleteAllOnSubmit(data.tbl_admins);
                data.SubmitChanges();
            }
        }

        public class ShoppingCardHelper
        {
            static ShoppingCardHelper instance;
            public static ShoppingCardHelper getInstance()
            {
                if (instance == null)
                {
                    instance = new ShoppingCardHelper();
                }
                return instance;
            }

            public void clearShoppingCard(BaseController context)
            {
                context.Session[Constants.KEY_SESSION_SHOPPING_CARD] = new List<Models.OrderDetail>();
            }

            public void DeleteItemsFromShoppingCard(BaseController context, int itemId)
            {
                List<Models.OrderDetail> shoppingCard = getShoppingCardInSession(context);
                foreach (Models.OrderDetail record in shoppingCard.ToList())
                {
                    if (record.iddh == itemId)
                    {
                        shoppingCard.Remove(record);
                    }
                }
            }

            public void deleteAllOrderDetails(Models.databaseDataContext data)
            {
                data.OrderDetails.DeleteAllOnSubmit(data.OrderDetails);
                data.SubmitChanges();
            }

            public void deleteAllOrders(Models.databaseDataContext data)
            {
                deleteAllOrderDetails(data);

                data.Orders.DeleteAllOnSubmit(data.Orders);
                data.SubmitChanges();

            }
            public int getOrderAmount(Models.databaseDataContext data)
            {
                return data.Orders.Count();
            }

            public int getPaidOrderAmount(Models.databaseDataContext data)
            {
                List<Models.Order> listOrder = data.Orders.ToList();
                int amount = 0;
                foreach (Models.Order order in listOrder)
                {
                    if (order.status.HasValue && order.status.Value)
                    {
                        amount++;
                    }
                }
                return amount;
            }

            public void saveOrder(BaseController context,
                string emailReceiver, string nameReceiver, string phoneReceiver, string addressReceiver,
                string note, string curency)
            {
                //Get member account by session email
                string emailSender = AccountHelper.getInstance().getLoggingInMemberEmail(context.HttpContext);
                Models.Customer member = AccountHelper.getInstance().getMemberAccountByEmail(context.db, emailSender);

                //Get shoppingCard in Sesion
                List<Models.OrderDetail> listShoppingCard = getShoppingCardInSession(context);
                long totalPrice = 0;
                foreach (Models.OrderDetail record in listShoppingCard.ToList())
                {
                    totalPrice += record.soluong.Value;
                }

                //Save order
                Models.Order order = new Models.Order();
                order.idkh = member.id;
                order.thoidiemdathang = DateTime.Now;
                order.tennguoinhan = emailReceiver;
                order.phonenumber = phoneReceiver;
                order.diachi = addressReceiver;
                order.email = emailReceiver;
                order.price = totalPrice;
                order.status = false;
                context.db.Orders.InsertOnSubmit(order);
                context.db.SubmitChanges(); //Submit change here to get the id of inserted record.

                //Save order_details
                foreach (Models.OrderDetail record in listShoppingCard.ToList())
                {
                    record.iddh = order.id;
                    context.db.OrderDetails.InsertOnSubmit(record);
                }
                context.db.SubmitChanges();
            }

            public void updateShoppingCard(BaseController context, List<Models.OrderDetail> shoppingCard)
            {
                context.Session[Constants.KEY_SESSION_SHOPPING_CARD] = shoppingCard;
            }

            public void addItemsToShoppingCard(BaseController context, int itemId, long price, int amount)
            {
                List<Models.OrderDetail> shoppingCard = getShoppingCardInSession(context);
                bool doesItemToAddExistInShoppingCard = false;
                foreach (Models.OrderDetail record in shoppingCard)
                {
                    if (record.idsp == itemId)
                    {
                        record.soluong = record.soluong + amount;
                        doesItemToAddExistInShoppingCard = true;
                    }
                }
                if (!doesItemToAddExistInShoppingCard)
                {
                    Models.OrderDetail recordInShoppingCard = new Models.OrderDetail();
                    recordInShoppingCard.idsp = itemId;
                    recordInShoppingCard.dongia = price;
                    recordInShoppingCard.soluong = amount;
                    shoppingCard.Add(recordInShoppingCard);
                }
            }

            public List<Models.OrderDetail> getShoppingCardInSession(BaseController context)
            {
                return getShoppingCardInSessionByHttpContext(context.HttpContext);
            }

            public List<ShoppingCardItemModel> getListShoppingCardItemModelFromListOrderDetails(Models.databaseDataContext data, List<Models.OrderDetail> listOrderDetails)
            {
                List<ShoppingCardItemModel> result = new List<ShoppingCardItemModel>();
                foreach (var orderDetail in listOrderDetails)
                {
                    Models.tbl_Product item = ProductHelper.getInstance().getProductById(data, orderDetail.idsp.Value);
                    ShoppingCardItemModel model = new ShoppingCardItemModel();
                    model.id = orderDetail.idsp.Value;
                    model.name = item.TenSP;
                    model.image = item.UrlHinh;
                    model.quantity = orderDetail.soluong.Value;
                    model.price = item.GiaHienTai;
                    model.total = model.price * model.quantity;
                    model.orderid = orderDetail.iddh.HasValue ? orderDetail.iddh.Value : 0;
                    model.modelid = orderDetail.id;
                    result.Add(model);
                }

                return result;
            }

            public List<ShoppingCardItemModel> getShoppingCardItemModelsInSession(BaseController context)
            {
                List<Models.OrderDetail> listOrderDetails = getShoppingCardInSessionByHttpContext(context.HttpContext);
                return getListShoppingCardItemModelFromListOrderDetails(context.db, listOrderDetails);
            }

            public List<Models.OrderDetail> getShoppingCardInSessionByHttpContext(HttpContextBase context)
            {
                List<Models.OrderDetail> shoppingCard;
                Object objShoppingCard = context.Session[Constants.KEY_SESSION_SHOPPING_CARD];
                if (objShoppingCard != null)
                {
                    shoppingCard = (List<Models.OrderDetail>)objShoppingCard;
                }
                else
                {
                    shoppingCard = new List<Models.OrderDetail>();
                    context.Session[Constants.KEY_SESSION_SHOPPING_CARD] = shoppingCard;
                }

                return shoppingCard;
            }

            public int getItemsAmountInShoppingCard(HttpContextBase context)
            {
                int result = 0;
                List<Models.OrderDetail> shoppingCard = getShoppingCardInSessionByHttpContext(context);
                foreach (Models.OrderDetail record in shoppingCard)
                {
                    if (record.soluong.HasValue)
                    {
                        result += record.soluong.Value;
                    }
                }

                return result;
            }
        }
    }
}
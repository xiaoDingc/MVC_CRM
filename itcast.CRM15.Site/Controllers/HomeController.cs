using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace itcast.CRM15.Site.Controllers
{
    using IServices;
    using Model.ModelViews;
    using EntityMapping;

    /// <summary>
    /// MVC中控制器类的对象是 DefaultControllerFactory
    /// DefaultControllerFactory:只会查找默认的无参构造函数，所以此处加了有参数的构造函数以后
    /// DefaultControllerFactory在运行的时候报错
    /// 将来只能由autofac中的控制器工厂调用有参数的构造函数来创建具体的控制器类实例
    /// </summary>
    public class HomeController : Controller
    {
        IsysFunctionServices sysFunSer;
        public HomeController(IsysFunctionServices funSer)
        {
            sysFunSer = funSer;
        }

        //
        // GET: /Home/
        public ActionResult Index()
        {
            var model = sysFunSer.QueryWhere(c => c.fID < 20).Select(c =>c.EntityMap()).FirstOrDefault();

            return View(model);
        }

    }
}

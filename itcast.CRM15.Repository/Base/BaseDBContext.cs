using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace itcast.CRM15.Repository
{
    using System.Data.Entity;

    /// <summary>
    /// 自定义EF上下文容器
    /// </summary>
    public class BaseDBContext : DbContext
    {
        public BaseDBContext() : base("name=JKCRMEntities") { }
    }
}

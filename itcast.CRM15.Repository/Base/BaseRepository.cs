using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace itcast.CRM15.Repository
{
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Linq.Expressions;
    using IRepository;

    /// <summary>
    /// 统一父类，负责所有表的CRUD操作，分页，排序，连表
    /// </summary>
    /// <typeparam name="TEntity"></typeparam>
    public class BaseRepository<TEntity> : IBaseRepository<TEntity> where TEntity : class
    {
        //1.0 实例化EF上下文容器对象类
        BaseDBContext db = new BaseDBContext();

        DbSet<TEntity> _dbset;
        public BaseRepository()
        {
            _dbset = db.Set<TEntity>();
        }

        #region 2.0  查询相关方法

        /// <summary>
        /// 根据labmda表达式进行查询
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public List<TEntity> QueryWhere(Expression<Func<TEntity, bool>> where)
        {
            return _dbset.Where(where).ToList();
        }

        /// <summary>
        /// 连表操作
        /// </summary>
        /// <param name="where"></param>
        /// <param name="tableNames"></param>
        /// <returns></returns>
        public List<TEntity> QueryJoin(Expression<Func<TEntity, bool>> where, string[] tableNames)
        {
            if (tableNames == null || tableNames.Any() == false)
            {
                throw new Exception("连表操作的表名称至少要有一个");
            }

            DbQuery<TEntity> query = _dbset;

            foreach (var tablename in tableNames)
            {
                query = query.Include(tablename);
            }

            return query.Where(where).ToList();

            //return _dbset.Include("A").Include("B")
        }

        /// <summary>
        /// 按照条件查询出数据以后，根据外部指定的字段进行升序排列
        /// </summary>
        /// <typeparam name="TKey">表示从TEntity中获取的属性类型</typeparam>
        /// <param name="where">条件</param>
        /// <param name="order">排序lambda表达式</param>
        /// <returns></returns>
        public List<TEntity> QueryOrderBy<TKey>(Expression<Func<TEntity, bool>> where, Expression<Func<TEntity, TKey>> order)
        {
            return _dbset.Where(where).OrderBy(order).ToList();
        }

        /// <summary>
        /// 按照条件查询出数据以后，根据外部指定的字段进行倒序排列
        /// </summary>
        /// <typeparam name="TKey">表示从TEntity中获取的属性类型</typeparam>
        /// <param name="where">条件</param>
        /// <param name="order">排序lambda表达式</param>
        /// <returns></returns>
        public List<TEntity> QueryOrderByDescending<TKey>(Expression<Func<TEntity, bool>> where, Expression<Func<TEntity, TKey>> order)
        {
            return _dbset.Where(where).OrderByDescending(order).ToList();
        }

        /// <summary>
        /// 分页方法
        /// </summary>
        /// <typeparam name="TKey">要指定的排序属性名称 Tentity.property</typeparam>
        /// <param name="pageindex">分页页码</param>
        /// <param name="pagesize">页容量</param>
        /// <param name="rowcount">总行数</param>
        /// <param name="order">排序lambda表达式</param>
        /// <param name="where">查询条件lambda表达式</param>
        /// <returns></returns>
        public List<TEntity> QueryByPage<TKey>(int pageindex, int pagesize, out int rowcount, Expression<Func<TEntity, TKey>> order, Expression<Func<TEntity, bool>> where)
        {
            //1.0 计算当前分页要跳过的数据行数
            int skipCount = (pageindex - 1) * pagesize;

            //2.0 获取当前满足条件的所有数据总条数
            rowcount = _dbset.Count(where);

            //3.0 获取分页数据
            return _dbset.Where(where).OrderByDescending(order).Skip(skipCount).Take(pagesize).ToList();
        }

        #endregion

        #region 3.0  编辑相关方法

        public void Edit(TEntity model, string[] propertys)
        {
            if (model == null)
            {
                throw new Exception("实体不能为空");
            }

            if (propertys.Any() == false)
            {
                throw new Exception("要修改的属性至少要有一个");
            }

            //2.0 将model追击到EF容器
            System.Data.Entity.Infrastructure.DbEntityEntry entry = db.Entry(model);
            entry.State = System.Data.EntityState.Unchanged;
            foreach (var item in propertys)
            {
                entry.Property(item).IsModified = true;
            }

            //3.0 关闭EF对于实体的合法性验证参数
            db.Configuration.ValidateOnSaveEnabled = false;
        }

        #endregion

        #region 4.0  删除相关方法

        public void Delete(TEntity model, bool isadded)
        {
            //(!isadded)表示当前model没有追加到EF容器中
            if (!isadded)
            {
                _dbset.Attach(model);
            }
            _dbset.Remove(model);
        }

        #endregion

        #region 5.0  新增相关方法

        public void Add(TEntity model)
        {
            _dbset.Add(model);
        }

        #endregion

        #region 6.0  统一提交

        public int SaveChanges()
        {
            return db.SaveChanges();
        }
        #endregion

    }
}

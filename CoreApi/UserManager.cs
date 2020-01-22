using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreApi
{
    public class UserManager
    {
        public List<CoreApi.Models.User> RetrieveAll()
        {
            Data.TestEntities testEntities = new Data.TestEntities();
            return testEntities.User.Select(x => new CoreApi.Models.User
            {
                FirstName = x.FirstName,
                LastName = x.LastName,
                Id = x.Id
            }).ToList();
        }

        public User RetrieveById(int id)
        {
            Data.TestEntities testEntities = new Data.TestEntities();
            return testEntities.User.Where(x => x.Id == id).FirstOrDefault();
        }
    }
}

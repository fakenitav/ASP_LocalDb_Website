using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Microsoft.App_Code
{
    public class Users
    {
        public int id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string user_type { get; set; }

        public Users(int id, string name, string email, string password, string user_type)
        {
            this.id = id;
            this.name = name;
            this.email = email;
            this.password = password;
            this.user_type = user_type;
        }

        public Users(string name, string email, string password, string user_type)
        {
            this.name = name;
            this.email = email;
            this.password = password;
            this.user_type = user_type;
        }
    }
}
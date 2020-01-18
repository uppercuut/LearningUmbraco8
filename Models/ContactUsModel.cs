using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LearningUmbraco8.Models
{
    public class ContactUsModel
    {
        public string userName  { get; set; }
        public string Email { get; set; }

        public string msgBody { get; set; }
    }
}
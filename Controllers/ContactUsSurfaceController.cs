using LearningUmbraco8.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Cache;
using Umbraco.Web.Mvc;

namespace LearningUmbraco8.Controllers
{
    public class ContactUsSurfaceController : SurfaceController
    {
        // GET: ContactUsSurface
        public ActionResult Index()
        {



            return PartialView();
        }


        [HttpPost]
        public ActionResult HandleSubmit(ContactUsModel contactUsModel)
        {
            var contentService = Services.ContentService;
            long total;
            string nodeId = System.Configuration.ConfigurationManager.AppSettings["ParentUmbracoContactNode"];


            var count = contentService.CountChildren(int.Parse(nodeId));

            var parentNode = contentService.GetPagedChildren(int.Parse(nodeId) , 0, count, out total);

            foreach (var item in parentNode)
            {
                if (item.GetValue<string>("email")== contactUsModel.Email)
                {
                    
                    return Json(new { res = "error", error_code = 9 }, JsonRequestBehavior.AllowGet);
                }


            }
          
            var createdContent= contentService.Create(contactUsModel.userName, int.Parse(nodeId), "contactPerson");

            createdContent.SetValue("userName", contactUsModel.userName);
            createdContent.SetValue("email", contactUsModel.Email);
            createdContent.SetValue("msgBody", contactUsModel.msgBody);

            contentService.SaveAndPublish(createdContent);


            return Json(new {res = "Thank you For sending us a msg! V2",error_code=0 },JsonRequestBehavior.AllowGet);
        }
    }
}
using LearningUmbraco8.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
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

            //TempData["responseMsg"] = "Thank you For sending us a msg!";


            return RedirectToCurrentUmbracoUrl();
        }
    }
}
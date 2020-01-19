using LearningUmbraco8.Models.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Security;
using Umbraco.Core.Models.Membership;
using Umbraco.Web.WebApi;

namespace LearningUmbraco8.Controllers.Api
{
    public class PersonApiController : UmbracoApiController
    {

        [HttpGet]
         public IHttpActionResult Offers(string lang= "en-US")
        {
            var contentService = Services.ContentService;
            long total;
            var offers = contentService.GetPagedChildren(1065, 0, 99, out total);
            var offersDto = new List<OffersDto>();
            foreach (var offer in offers)
            {
                offersDto.Add(new OffersDto() { Name = offer.GetValue<string>("offerName", lang) , Description = offer.GetValue<string>("desc", lang) } );
            }
            return Json(offersDto);
        }

        [HttpPost]
        public IHttpActionResult Offers(MultiLangOffersDto multiLangOffersDto)
        {

            IUser currentUser = null ;



            var valid = UmbracoContext.Security.ValidateBackOfficeCredentials("gg@wp.com", "0123456789");
            if (valid)
            {
                currentUser = Services.UserService.GetByUsername("gg@wp.com");

                if (currentUser.Groups.SingleOrDefault(x => x.Alias == "admin") == null)
                {

                    return Unauthorized();

                }
            }
            else {

                return Unauthorized ();
            }

            var userExists = UmbracoContext.Security.CurrentUser;

            var contentService = Services.ContentService;
         
            var createdContent = contentService.Create(multiLangOffersDto.NameEn, 1065, "offers",currentUser.Id);

            createdContent.SetCultureName(multiLangOffersDto.NameEn, "en-US");

            createdContent.SetCultureName(multiLangOffersDto.NameAr, "ar");

            createdContent.SetValue("offerName", multiLangOffersDto.NameEn,"en-US");
            createdContent.SetValue("desc", multiLangOffersDto.DescriptionEn, "en-US");
            createdContent.SetValue("offerName", multiLangOffersDto.NameAr ,"ar");
            createdContent.SetValue("desc", multiLangOffersDto.DescriptionAr, "ar");

            contentService.SaveAndPublish(createdContent);


            return Json(new {error_code=0});

        }


    }
}

using CoreApi;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi.Models;

namespace WebApi.Controllers
{
    public class UserController : ApiController
    {
        public IHttpActionResult Get() {
            try
            {
                ApiResponse apiResponse = new ApiResponse();
                UserManager manager = new UserManager();
                apiResponse.Data = manager.RetrieveAll();
                return Ok(apiResponse);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }
    }
}

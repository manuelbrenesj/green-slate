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
    public class ProjectInfoController : ApiController
    {
        public IHttpActionResult Get(int id)
        {
            try
            {
                ApiResponse apiResponse = new ApiResponse();
                ProjectInfoManager manager = new ProjectInfoManager();
                apiResponse.Data = manager.RetrieveById(id);
                return Ok(apiResponse);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }

        }
    }
}

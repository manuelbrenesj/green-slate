using CoreApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreApi
{
    public class ProjectInfoManager
    {
        public List<ProjectInfo> RetrieveById(int id)
        {
            Data.TestEntities testEntities = new Data.TestEntities();
            return (from projectInfo in testEntities.UserProject
                    where projectInfo.UserId == id
                    select new
                    {
                        projectInfo.ProjectId,
                        projectInfo.AssignedDate,
                        projectInfo.Project.StartDate,
                        projectInfo.Project.EndDate,
                        projectInfo.Project.Credits,
                        projectInfo.IsActive
                    }).AsEnumerable().Select(x =>
                    new ProjectInfo
                    {
                        ProjectId = x.ProjectId,
                        StartDay = x.StartDate.ToString("yyyy-MM-dd"),
                        TimeOfStart = CalculateTimeOfStart(x.AssignedDate, x.StartDate),
                        EndDate = x.EndDate.ToString("yyyy-MM-dd"),
                        Credits = x.Credits,
                        Status = CalculateStatus(x.IsActive)
                    }).ToList();
        }

        private string CalculateTimeOfStart(DateTime assignedDate, DateTime startDate)
        {
            double timeOfStart = (startDate - assignedDate).TotalDays;
            return timeOfStart > 0 ? timeOfStart.ToString() : "Started";
        }

        private string CalculateStatus(bool isActive)
        {
            return isActive ? "Active" : "Inactive";
        }
    }
}

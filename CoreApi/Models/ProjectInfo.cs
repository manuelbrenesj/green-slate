using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CoreApi.Models
{
    public class ProjectInfo
    {
        public int ProjectId { get; set; }
        public string StartDay { get; set; }
        public string TimeOfStart { get; set; }
        public string EndDate { get; set; }
        public int Credits { get; set; }
        public string Status { get; set; }
    }
}

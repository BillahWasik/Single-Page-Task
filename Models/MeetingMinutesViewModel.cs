using System.ComponentModel.DataAnnotations;

namespace Single_Page_Task.Models
{
    public class MeetingMinutesViewModel
    {
        public string CustomerType { get; set; }
        public int CustomerID { get; set; }
        [DataType(DataType.Date)]
        [DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime MeetingDate { get; set; }
        public string MeetingTime { get; set; }
        public string MeetingPlace { get; set; }
        public string AttendsFromClientSide { get; set; }
        public string AttendsFromHostSide { get; set; }
        public string MeetingAgenda { get; set; }
        public string MeetingDiscussion { get; set; }
        public string MeetingDecision { get; set; }
        public List<MeetingDetails> MeetingDetails { get; set; }
    }
}

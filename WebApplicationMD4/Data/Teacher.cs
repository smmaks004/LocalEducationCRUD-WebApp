using System.ComponentModel.DataAnnotations;

namespace WebApplicationMD4.ModelsDB
{
    public partial class Teacher
    {
        

        //[Key]
        //public int Teacher_ID { get; set; }
        //public string Name { get; set; }
        //public string Surname { get; set; }
        //public string Gender { get; set; }
        //public DateTime ContractDate { get; set; }

        public string Fullname { get { return Name + " " + Surname; } }

        //public override string? ToString()
        //{
        //    return "Fullname: " + Fullname + "\n  Gender: " + Gender + "\n  ContractDate: " + ContractDate;
        //}

    }
}

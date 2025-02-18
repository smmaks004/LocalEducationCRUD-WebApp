using System.ComponentModel.DataAnnotations;

namespace WebApplicationMD4.ModelsDB
{
    public partial class Student
    {

        public string Fullname { get { return Name + " " + Surname; } }

    }
}

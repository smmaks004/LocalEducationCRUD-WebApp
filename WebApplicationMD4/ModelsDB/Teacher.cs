using System;
using System.Collections.Generic;

namespace WebApplicationMD4.ModelsDB;

public partial class Teacher
{
    public int TeacherId { get; set; }

    public string? Name { get; set; }

    public string? Surname { get; set; }

    public string? Gender { get; set; }

    public DateOnly? ContractDate { get; set; }

    public virtual ICollection<Course> Courses { get; set; } = new List<Course>();

    //public string Fullname { get { return Name + " " + Surname; } }
}

using System;
using System.Collections.Generic;

namespace WebApplicationMD4.ModelsDB;

public partial class Student
{
    public int StudentId { get; set; }

    public string Name { get; set; } = null!;

    public string Surname { get; set; } = null!;

    public string Gender { get; set; } = null!;

    public string StudentIdNumber { get; set; } = null!;

    public virtual ICollection<Submission> Submissions { get; set; } = new List<Submission>();
}

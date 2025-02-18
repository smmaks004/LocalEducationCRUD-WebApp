using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationMD4.ModelsDB;

public partial class Course
{
    public int CourseId { get; set; }

    public string? Name { get; set; }

    [Display(Name = "Teacher")]
    public int TeacherId { get; set; }



    public virtual ICollection<Assignment> Assignments { get; set; } = new List<Assignment>();

    public virtual Teacher? Teacher { get; set; }
}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationMD4.ModelsDB;

public partial class Assignment
{
    public int AssignmentId { get; set; }

    public DateTime? Deadline { get; set; }

    [Display(Name = "Course")]
    public int CourseId { get; set; }

    public string? Description { get; set; }



    public virtual Course? Course { get; set; }

    public virtual ICollection<Submission> Submissions { get; set; } = new List<Submission>();
}

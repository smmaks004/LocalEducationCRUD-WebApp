using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApplicationMD4.ModelsDB;

public partial class Submission
{
    public int SubmissionId { get; set; }


    [Display(Name = "Assignment")]
    public int AssignmentId { get; set; }

    [Display(Name = "Student")]
    public int StudentId { get; set; }



    public DateTime? SubmissionTime { get; set; }

    public int? Score { get; set; }


    public virtual Assignment? Assignment { get; set; }

    public virtual Student? Student { get; set; }
}

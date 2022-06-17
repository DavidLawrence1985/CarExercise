using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Car
{
    public interface ICarSectionDetail
    {
        int SectionDetailID { get; set; }
        string SectionTitle { get; set; }
        string SectionDescription { get; set; }
        string SectionImageURL { get; set; }
    }
}

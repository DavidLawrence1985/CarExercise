using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Car
{
    public class CarSectionDetail : ICarSectionDetail
    {
        public int SectionDetailID { get; set; }
        public string SectionTitle { get; set; }
        public string SectionDescription { get; set; }
        public string SectionImageURL { get; set; }
    }
}

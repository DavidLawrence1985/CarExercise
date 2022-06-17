using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Car
{
    public class CarSection : ICarSection
    { 
        public int CarSectionID { get; set; }
        public string CarSectionName { get; set; }
        public string CarSectionImageURL { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Car
{
    public interface ICarSection
    {
        int CarSectionID { get; set; }
        string CarSectionName { get; set; }
        string CarSectionImageURL { get; set; }
    }
}

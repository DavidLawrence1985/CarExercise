using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Car
{
    public interface ICarRepo
    {
        IEnumerable<ICarSection> GetCarSections();
        IEnumerable<ICarSectionDetail> GetCarSectionDetails(int id);
    }
}

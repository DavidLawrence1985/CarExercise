using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CarDescriptionExercise.Car;
using Microsoft.AspNetCore.Mvc;

namespace CarDescriptionExercise.Controllers
{
    [Route("car")]
    [ApiController]
    public class CarController : ControllerBase
    {
        private readonly ICarRepo _carRepo;

        public CarController(ICarRepo carRepo)
        {
            _carRepo = carRepo;
        }


        // GET api/values/5
        [HttpGet("carsections")]
        public ActionResult<IEnumerable<ICarSection>> GetCarSections()
        {
            var results = _carRepo.GetCarSections();
            if(results.ToList().Count < 1)
            {
                return NotFound();
            }
            return Ok(results);
        }

        [HttpGet("carsection-details")]
        public ActionResult<IEnumerable<ICarSection>> GetCarSectionDetails([FromQuery] int id)
        {
            var results = _carRepo.GetCarSectionDetails(id);
            if (results.ToList().Count < 1)
            {
                return NotFound();
            }
            return Ok(results);
        }


        // POST api/values
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}

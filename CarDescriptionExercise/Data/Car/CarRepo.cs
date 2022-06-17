using Microsoft.Extensions.Configuration;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Data;

namespace CarDescriptionExercise.Car
{
    public class CarRepo : ICarRepo
    {
        private readonly string _dbConnectionString;
        public CarRepo(IConfiguration configuration)
        {
            _dbConnectionString = configuration.GetConnectionString("CarDB");
        }

        public IEnumerable<ICarSection> GetCarSections()
        {
            var carSecList = new List<ICarSection>();
            try
            {
                using (var db = new SqlConnection(_dbConnectionString))
                {
                    carSecList.AddRange(db.Query<CarSection>(CarConstants.CarSection_Select, commandType: CommandType.StoredProcedure).ToList());
                }
                return carSecList;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception occured, message: {ex.Message}");
                return carSecList;
            }
        }

        public IEnumerable<ICarSectionDetail> GetCarSectionDetails(int id)
        {
            var sectionDetailsList = new List<ICarSectionDetail>();

            try
            {
                var param = new DynamicParameters();
                param.Add("@CarSectionID", id);
                using (var db = new SqlConnection(_dbConnectionString))
                {
                    sectionDetailsList.AddRange(db.Query<CarSectionDetail>(CarConstants.CarSectionDetails_Select, param, commandType: CommandType.StoredProcedure).ToList());
                }
                return sectionDetailsList;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception occured, message: {ex.Message}");
                return sectionDetailsList;
            }
        }
    }
}

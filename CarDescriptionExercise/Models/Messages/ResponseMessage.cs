using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CarDescriptionExercise.Models.Messages
{
    public class ResponseMessage
    {
        public bool Success { get; set; }
        public int HttpStatusCode { get; set; }
    }
}

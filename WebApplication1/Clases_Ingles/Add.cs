using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Clases_Ingles
{
    public class Add
    {
        public int Id { get; set; }
        public string Computer { get; set; }
        public string Description { get; set; }
        public string Problem { get; set; }
        public string Writer { get; set; }
        public Add() { }

        public Add(string pComputer, string pDescription, string pProblem, string pWriter, int pId)
        {
            this.Id = pId;
            this.Computer = pComputer;
            this.Description = pDescription;
            this.Problem = pProblem;
            this.Writer = pWriter;
        }
    }
}
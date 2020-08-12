using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Clases
{
    public class Agregar
    {
        public int Id { get; set; }
        public string Maquina { get; set; }
        public string Descripcion { get; set; }
        public string Problema { get; set; }
        public string Escritor { get; set; }
        public Agregar() { }

        public Agregar(string pMaquina, string pDescripcion, string pProblema, string pEscritor, int pId)
        {
            this.Id = pId;
            this.Maquina = pMaquina;
            this.Descripcion = pDescripcion;
            this.Problema = pProblema;
            this.Escritor = pEscritor;
        }
    }
}
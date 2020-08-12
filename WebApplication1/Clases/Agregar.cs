using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Clases
{
	public class Agregar
	{
			public int Id { get; set; }
			public string maquina { get; set; }
			public string descripcion { get; set; }
			public string problema { get; set; }
			public string escritor { get; set; }
			public Agregar() { }

			public Agregar(string pMaquina, string pDescripcion, string pProblema, string pEscritor, int pId)

			{
				this.Id = pId;
				this.maquina = pMaquina;
				this.descripcion = pDescripcion;
				this.problema = pProblema;
				this.escritor = pEscritor;
			}
	}

}


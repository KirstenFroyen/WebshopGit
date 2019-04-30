using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Webshop.Persistence;
namespace Webshop.Business
{
    public class Controller
    {
        PersistenceCode persistence = new PersistenceCode();
        Winkelmandje winkelmandje = new Winkelmandje();

       public List<Product> haalProductenOp()
        {
            return persistence.loadProducts();
        }

        public void voegProductAanMandjeToe(int klantnr, int artnr, int aantal )
        {
            winkelmandje.KlantNr = klantnr;
            winkelmandje.ArtNr = artnr;
            winkelmandje.Aantal = aantal;

            persistence.insertCart(winkelmandje);
           
            
        }

        public List<Winkelmandje> haalMandjeOp()
        {
            return persistence.loadCart();
        }

       

    }
}
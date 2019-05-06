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
        Bestelling bestelling = new Bestelling();
        Bestellijn bestellijn = new Bestellijn();

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

        public Product laadArtikel(int id )
        {
            return persistence.getProduct(id);
        }

        public void verwijderProduct(int id , int klantnr)
        {
            persistence.deleteProduct(id, klantnr);
        }
       
        public void PasVoorraadAan(int id, int voorraad)
        {
            persistence.UpdateVoorraad(id, voorraad);
        }

        public bool mandjeChecken(int klantnr)
        {
            return persistence.CheckMandje(klantnr);
        }

        public Klant laadKlant(int id)
        {
            return persistence.loadClient(id);
        }


        public void slaBestellingOp( DateTime datum, int klantnr, double histprijs)
        {
          
            bestelling.Datum = datum;
            bestelling.KlantNr = klantnr;
            bestelling.HistPrijs = histprijs;

            persistence.insertOrder(bestelling);
        }


        public double haalPrijsOp(int artnr)
        {
            return persistence.getHistprice(artnr);
        }
    }
}
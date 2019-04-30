﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using Webshop.Business;
namespace Webshop.Persistence
{
    public class PersistenceCode
    {
        private string ConnStr = "server=localhost;user id=root; password=Test123; database=dbwebshop";



        public Product getProduct(int id)
        {
            MySqlConnection conn = new MySqlConnection(ConnStr);
            conn.Open();
            string qry = "SELECT * FROM tblproduct WHERE ArtNr =" + id;
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            MySqlDataReader dtr = cmd.ExecuteReader();
            Product product = new Product();
            while (dtr.Read())
            {
               
                product.ArtNr = Convert.ToInt32(dtr["ArtNr"]);
                product.Naam = dtr["Naam"].ToString();
                product.Foto = dtr["Foto"].ToString();
                product.Prijs = Convert.ToDouble(dtr["Prijs"]);
                product.Voorraad = Convert.ToInt32(dtr["Voorraad"]);

            }
            return product;
            conn.Close();
        }


        public List<Product> loadProducts()
        {
            MySqlConnection conn = new MySqlConnection(ConnStr);
            conn.Open();
            string qry = "SELECT * FROM tblproduct";
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            MySqlDataReader dtr = cmd.ExecuteReader();
            List<Product> _lijst = new List<Product>();
            while(dtr.Read())
            {
                Product prod = new Product();
                prod.ArtNr = Convert.ToInt32(dtr["ArtNr"]);
                prod.Naam = dtr["Naam"].ToString();
                prod.Foto = dtr["Foto"].ToString();
                prod.Prijs = Convert.ToDouble(dtr["Prijs"]);
                prod.Voorraad = Convert.ToInt32(dtr["Voorraad"]);
                _lijst.Add(prod);

            }conn.Close();
            return _lijst;
        }

        

        public void insertCart(Winkelmandje winkelmandje)
        {
            MySqlConnection conn = new MySqlConnection(ConnStr);
            conn.Open();
            string qry = "INSERT INTO tblwinkelmandje(KlantNr,ArtNr, Aantal) VALUES ('" + winkelmandje.KlantNr + "','" + winkelmandje.ArtNr + "','" + winkelmandje.Aantal + "')";
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }

        public List<Winkelmandje> loadCart()
        {
            MySqlConnection conn = new MySqlConnection(ConnStr);
            conn.Open();
            string qry = "SELECT Foto, winkelmandje.ArtNr, Naam, Aantal, Prijs, SUM(Aantal * Prijs) as Totaal   FROM tblwinkelmandje INNER JOIN " +
                "tblproduct ON tblwinkelmandje.ArtNr = tblproduct.ArtNr";
            MySqlCommand cmd = new MySqlCommand(qry, conn);
            MySqlDataReader dtr = cmd.ExecuteReader();
            List<Winkelmandje> _lijst = new List<Winkelmandje>();
            while (dtr.Read())
            {
                Winkelmandje winkelmandje = new Winkelmandje();
                winkelmandje.Foto = dtr["Foto"].ToString();
                winkelmandje.ArtNr = Convert.ToInt32(dtr["ArtNr"]);
                winkelmandje.Naam = dtr["Naam"].ToString();
                winkelmandje.Aantal = Convert.ToInt32(dtr["Aantal"]);
                winkelmandje.Prijs = Convert.ToDouble(dtr["Prijs"]);
                winkelmandje.Totaal = Convert.ToDouble(dtr["Totaal"]);

            }
            conn.Close();
            return _lijst;
        }

    }
}
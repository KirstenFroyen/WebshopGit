﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Webshop.Business;

namespace Webshop
{
    public partial class winkelmandje : System.Web.UI.Page
    {
        Controller _cont = new Controller();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblKlantNr.Text = _cont.laadKlant(1).KlantNr.ToString();
            lblNaam.Text = _cont.laadKlant(1).Voornaam + " " + _cont.laadKlant(1).Naam;
            lblAdres.Text = _cont.laadKlant(1).Adres.ToString();
            lblPC.Text = _cont.laadKlant(1).PC.ToString();
            lblGemeente.Text = _cont.laadKlant(1).Gemeente.ToString();
            lblDatum.Text = DateTime.Now.ToLongDateString();

            gvMandje.DataSource = _cont.haalMandjeOp(1);
            gvMandje.DataBind();

            lblTotExBtw.Text = "€ " + Math.Round(_cont.Haaltotalenop(1).TotExBtw,2);
            lblBtw.Text = "€ " + Math.Round(_cont.Haaltotalenop(1).Btw, 2);
            lblTotIncBtw.Text = "€ " + Math.Round(_cont.Haaltotalenop(1).TotIncBtw, 2);
            Session["totaal"] = lblTotIncBtw.Text;


        }
        protected void gvMandje_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            int NieuweVoorraad = _cont.Haalvoorraadop(Convert.ToInt32(gvMandje.SelectedRow.Cells[2].Text))+ Convert.ToInt32(gvMandje.SelectedRow.Cells[4].Text);
            _cont.PasVoorraadAan(Convert.ToInt32(gvMandje.SelectedRow.Cells[2].Text), NieuweVoorraad);
            _cont.verwijderProduct(Convert.ToInt32(gvMandje.SelectedRow.Cells[2].Text), 1);

            if (_cont.mandjeChecken(1))
            {
                Response.Redirect("WinkelmandjeLeeg.aspx");
            }
            else
            {
                gvMandje.DataSource = _cont.haalMandjeOp(1);
                gvMandje.DataBind();
            }
        }

        protected void btnBestellen_Click(object sender, EventArgs e)
        {
          
          
            _cont.slaBestellingOp(DateTime.Now, 1);
            for ( int i = 0; i< gvMandje.Rows.Count; i++)
            {
               
                _cont.slaBestellijnOp(_cont.haalOrderNrOp(DateTime.Now), Convert.ToInt32(gvMandje.Rows[i].Cells[2].Text), Convert.ToInt32(gvMandje.Rows[i].Cells[4].Text), _cont.haalPrijsOp(Convert.ToInt32(gvMandje.Rows[i].Cells[2].Text)));

                _cont.verwijderProduct(Convert.ToInt32(gvMandje.Rows[i].Cells[2].Text), 1);
            }
            Session["ordernr"] = _cont.haalOrderNrOp(DateTime.Now);
            Response.Redirect("bestelbevestiging.aspx");
            

        }

        protected void dtlTotalen_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
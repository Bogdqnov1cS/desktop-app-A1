using System;
using System.Collections.Generic;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace A1
{
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();

            listView1.View = View.Details;
            listView1.FullRowSelect = true;

            if (listView1.Columns.Count == 0)
            {
                listView1.Columns.Add("Broj clanske karte", 120);
                listView1.Columns.Add("JMBG", 120);
                listView1.Columns.Add("Ime", 100);
                listView1.Columns.Add("Prezime", 100);
                listView1.Columns.Add("Adresa", 150);
            }
        }
        
        private readonly string connectionString = "server=localhost;user=root;database=a1;port=3306;password=stefan";
        string insert_query = "INSERT INTO Citalac (CitalacID, MaticniBroj, Ime, Prezime, Adresa) " + "VALUES (@CitalacID, @MaticniBroj, @ime, @prezime, @adresa)";

        public class Citalac
        {
            public int BrojClanskeKarte { get; set; }
            public string JMBG { get; set; }
            public string Ime { get; set; }
            public string Prezime { get; set; }
            public string Adresa { get; set; }

            public string FullName => $"{Ime ?? string.Empty} {Prezime ?? string.Empty}".Trim();
            public override string ToString() => FullName;
        }

        public List<Citalac> citalacList = new List<Citalac>();

        public void GetData()
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string sql = "SELECT CitalacID, MaticniBroj, Ime, Prezime, Adresa FROM Citalac";
                MySqlCommand command = new MySqlCommand(sql, connection);
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Citalac citalac = new Citalac
                        {
                            BrojClanskeKarte = reader.GetInt32("CitalacID"),
                            JMBG = reader.GetString("MaticniBroj"),
                            Ime = reader.GetString("Ime"),
                            Prezime = reader.GetString("Prezime"),
                            Adresa = reader.GetString("Adresa")
                        };
                        citalacList.Add(citalac);
                    }
                }

                foreach(var i in citalacList)
                {
                    ListViewItem item = new ListViewItem(i.BrojClanskeKarte.ToString());
                    item.SubItems.Add(i.JMBG);
                    item.SubItems.Add(i.Ime);
                    item.SubItems.Add(i.Prezime);
                    item.SubItems.Add(i.Adresa);
                    listView1.Items.Add(item);
                }
            }
        }

        public void GetInput()
        {
            try
            {
                Citalac citalac = new Citalac();
                var BrojClanskeKarte = int.Parse(txtBrojClanskeKarte.Text);
                var JMBG = txtJMBG.Text;
                var Ime = txtIme.Text;
                var Prezime = txtPrezime.Text;
                var Adresa = txtAdresa.Text;

                ListViewItem item = new ListViewItem(BrojClanskeKarte.ToString());
                item.SubItems.Add(JMBG);
                item.SubItems.Add(Ime);
                item.SubItems.Add(Prezime);
                item.SubItems.Add(Adresa);
                listView1.Items.Add(item);

                string insert_query = "INSERT INTO Citalac (CitalacID, MaticniBroj, Ime, Prezime, Adresa) " + "VALUES (@CitalacID, @MaticniBroj, @ime, @prezime, @adresa)";
                MySqlCommand cmd = new MySqlCommand(insert_query);
                cmd.ExecuteNonQuery();

                MessageBox.Show("Uspesno dodat citalac!", "Obavestenje", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch(Exception ex)
            {
                MessageBox.Show("Greska prilikom dodavanja citaca: " + ex.Message, "Greska", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Main_Load(object sender, EventArgs e)
        {
            GetData();
            FillCbxCitalac();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnUpisi_Click(object sender, EventArgs e)
        {
            GetInput();
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                MySqlCommand cmd = new MySqlCommand(insert_query, connection);

            }
        }

        private void btnIzbrisi_Click(object sender, EventArgs e)
        {
            var selectedIndex = listView1.SelectedIndices;
            if (selectedIndex.Count == 0)
            {
                MessageBox.Show("Niste izabrali ni jedan red za brisanje!", "Greska", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            
            for(int i = listView1.SelectedItems.Count - 1; i >= 0; i--)
            {
                listView1.Items.Remove(listView1.SelectedItems[i]);
            }
        }

        public void FillCbxCitalac()
        {
            var items = new List<Citalac>();

            using(var connection = new MySqlConnection(connectionString))
            { 
                connection.Open();

                using(var cmd = new MySqlCommand("select CitalacID, ime, prezime from citalac", connection))
                using(var reader = cmd.ExecuteReader())
                {
                    int idxId = reader.GetOrdinal("CitalacID");
                    int idxIme = reader.GetOrdinal("ime");
                    int idxPrezime = reader.GetOrdinal("prezime");

                    while(reader.Read())
                    {
                        items.Add(new Citalac
                        {
                            BrojClanskeKarte = reader.IsDBNull(idxId) ? 0 : reader.GetInt32(idxId),
                            Ime = reader.IsDBNull(idxId) ? string.Empty : reader.GetString(idxIme),
                            Prezime = reader.IsDBNull(idxId) ? string.Empty : reader.GetString(idxPrezime),
                        });
                    }
                }
            }

            cbxCitalac.DisplayMember = "FullName";
            cbxCitalac.ValueMember = "BrojClanskeKarte";
            cbxCitalac.DataSource = items;
        }

        private void cbxCitalac_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

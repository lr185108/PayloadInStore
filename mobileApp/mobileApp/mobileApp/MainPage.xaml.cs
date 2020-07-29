using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace mobileApp
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void Button_OnClicked(object sender, EventArgs e)
        {
            Random rankGenerator = new Random();
            int rank = rankGenerator.Next(1, 5);
            switch (rank)
            {
                case 1: SetRank(sender, Color.GreenYellow, "Very low");
                    break;
                case 2:
                    SetRank(sender, Color.MediumSeaGreen, "Low");
                    break;
                case 3:
                    SetRank(sender, Color.Orange, "Medium");
                    break;
                case 4:
                    SetRank(sender, Color.Salmon, "High");
                    break;
                case 5:
                    SetRank(sender, Color.Red, "Very high");
                    break;
            }
                
        }

        private void SetRank(object sender, Color color, string text)
        {
            ((Button)sender).BackgroundColor = color;
            ((Button)sender).Text = text;
        }

        private void OnImageNameTapped(object sender, EventArgs e)
        {
            string url = "http://10.0.0.5:3000/";
            Device.OpenUri(new Uri(url));
        }

        private ICommand _tapCommand;
        public ICommand TapCommand =>
            _tapCommand ?? (_tapCommand = new Command<string>(OpenUrl));

        void OpenUrl(string url)
        {
            Device.OpenUri(new Uri(url));
        }
    }
}

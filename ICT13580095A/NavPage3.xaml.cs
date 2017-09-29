using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace ICT13580095A
{
    public partial class NavPage3 : ContentPage
    {
        public NavPage3()
        {
            InitializeComponent();
            backButton.Clicked += BackButton_Clicked;
            backToRootButton.Clicked += BackToRootButton_Clicked;
        }

        void BackButton_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }

        void BackToRootButton_Clicked(object sender, EventArgs e)
        {
            Navigation.PopToRootAsync();
        }
    }
}

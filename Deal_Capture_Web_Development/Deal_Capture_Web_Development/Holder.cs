﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Place Holder class, allows for us to  have a global variable of "Role" within every page

namespace Deal_Capture_Web_Development
{
    public class Holder : System.Web.UI.Page
    {
        // Set the default of role to be 'F'
        protected static char role = 'F';

        // Blank Constructor
        public Holder()
        {

        }
    }
}
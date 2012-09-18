using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace CopyPath
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                bool copyFileName = args.Length > 1 && "-n".Equals(args[1]);
                string textToCopy = copyFileName ? Path.GetFileName(args[0]) : args[0];
                Clipboard.Clear();
                Clipboard.SetText(textToCopy);
            }
        }
    }
}

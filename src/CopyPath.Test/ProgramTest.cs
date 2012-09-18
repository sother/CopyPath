using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using NUnit.Framework;

namespace CopyPath.Test
{
    [TestFixture]
    public class ProgramTest
    {
         [STAThread]
         [TestCase(@"c:\test", new[] { @"c:\test" })]
         [TestCase(@"c:\test.txt", new[] { @"c:\test.txt" })]
         [TestCase(@"c:\test\test.txt", new[] { @"c:\test\test.txt" })]
         [TestCase(@"test", new[] { @"c:\test", "-n" })]
         [TestCase(@"test.txt", new[] { @"c:\test.txt", "-n" })]
         [TestCase(@"test.txt", new[] { @"c:\test\test.txt", "-n" })]
         public void Test(string expectedClipboardContent, params string[] args)
         {
            typeof(Program).GetMethod("Main", BindingFlags.NonPublic | BindingFlags.Static).Invoke(null, new object[] { args });
            Assert.AreEqual(expectedClipboardContent, Clipboard.GetText());
        }
    }
}

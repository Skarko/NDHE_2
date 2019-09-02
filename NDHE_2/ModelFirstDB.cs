using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;

namespace NDHE_2
{
    public class ModelFirstDB
    {
        static void Main(string[] args)
        {
            using (var db = new ndheContext())
            {
                Console.WriteLine( "Enter your name: ");
                var name = Console.ReadLine();

                var HairExtension = new HairExtension{ Name = name};
                db.HairExtensions.Add(HairExtension);
                db.SaveChanges();

                var query = from h in db.HairExtensions
                    orderby h.Name
                    select h;

                foreach (var item in query)
                {
                    Console.WriteLine(item.Name);   
                }

            }

        }
    }
}
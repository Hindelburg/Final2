namespace FinalTake2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;



    [Table("Bid")]
    public partial class Bid
    {
        [Required]
        public int id { get; set; }

        [Required]
        public int itemID { get; set; }

        [Required]
        public int buyerID { get; set; }

        [Required]
        public int price { get; set; }

        [Required]
        public DateTime timeOffered  {get; set;}

        public virtual Buyer Buyer { get; set; }

        public virtual Item Item { get; set; }
    }
}


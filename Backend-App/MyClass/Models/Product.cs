﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyClass.Models
{
    [Table("Products")]
    public class Product
    {
        [Key]
        public int Id { get; set; }
        public int CatId { get; set; }
        public int? BrandId { get; set; }
        public int? Sort_Order { get; set; }
        [Required(ErrorMessage = "Tên sản phẩm không được để trống")]
        public String Name { get; set; }
        public String Slug { get; set; }
        public String Img { get; set; }
        public String Detail { get; set; }
        public float Price { get; set; }
        [Required(ErrorMessage = "Mô tả không được để trống!")]
        public String Description { get; set; }
        public int? Created_By { get; set; }
        public DateTime? Created_At { get; set; }
        public int? Updated_By { get; set; }
        public DateTime? Updated_At { get; set; }
        public int Status { get; set; }
    }
}

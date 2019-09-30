using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace QH_COMPUTER.Models
{
    public class LapTopDATA : DropCreateDatabaseAlways<TenDL>
    {
        protected override void Seed(TenDL context)
        {
            GetHangs().ForEach(c => context.Hangs.Add(c));
            GetLapTops().ForEach(p => context.LapTops.Add(p));
        }
        private static List<Hang> GetHangs()
        {
            var Hangs = new List<Hang>
            {
                new Hang
                {
                    HangID = 1,
                    TenHang = "DELL"
                },
                new Hang
                {
                    HangID = 2,
                    TenHang = "APPLE"
                },
                new Hang
                {
                    HangID = 3,
                    TenHang = "ACER"
                },
                new Hang
                {
                    HangID = 4,
                    TenHang = "ASUS"
                }
            };
            return Hangs;
        }
        private static List<LapTop> GetLapTops()
        {
            var LapTops = new List<LapTop> {
                new LapTop
                {
                    LaptopID = 1,
                    TenLaptop = "Dell-inspiron-3576-i3-7020u",
                    MoTa = ".....",
                    HinhAnh ="DELL/dell-inspiron-3576-i3-7020u-450-600x600.png",
                    GiaBan = 16000000,
                    HangID = 1
                    },
                new LapTop
                {
                    LaptopID = 2,
                    TenLaptop = "Dell-vostro-3468-i3-7020u",
                    MoTa = "......",
                    HinhAnh ="DELL/dell-vostro-3468-i3-7020u-70161069-15-600x600.jpg",
                    GiaBan = 19000000,
                    HangID = 1
                },
                new LapTop
                {
                    LaptopID = 3,
                    TenLaptop = "Apple-Macbook-Air-2019-i5-16ghz-8gb-128gb",
                    MoTa = "......",
                    HinhAnh ="APPLE/apple-macbook-air-2019-i5-16ghz-8gb-128gb-mvfm2sa-13-32-600x600.jpg",
                    GiaBan = 55000000,
                    HangID = 2
                },
                new LapTop
                {
                    LaptopID = 4,
                    TenLaptop = "Apple-Macbook-Air-i5-5350u",
                    MoTa = ".....",
                    HinhAnh ="APPLE/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg",
                    GiaBan = 34000000,
                    HangID = 2
                },
                new LapTop
                {
                    LaptopID = 5,
                    TenLaptop = "Acer-Aspire-i3-7020u",
                    MoTa = ".....",
                    HinhAnh ="ACER/acer-aspire-3-a315-54-30fk-i3-7020u-4gb-1tb-win10-18-600x600.jpg",
                    GiaBan = 13000000,
                    HangID = 3
                },
                new LapTop
                {
                    LaptopID = 6,
                    TenLaptop = "Acer-Aspire-a314-31",
                    MoTa = ".....",
                    HinhAnh ="ACER/acer-aspire-a314-31-c2ux-nxgnssv008-600x600.jpg",
                    GiaBan = 18000000,
                    HangID = 3
                },
                new LapTop
                {
                    LaptopID = 7,
                    TenLaptop = "Asus-X407ua",
                    MoTa = ".....",
                    HinhAnh ="ASUS/asus-x407ua-bv351t-600x600.jpg",
                    GiaBan = 15000000,
                    HangID = 4
                },
                new LapTop
                {
                    LaptopID = 8,
                    TenLaptop = "Asus-X407ua-i37020u",
                    MoTa = "......",
                    HinhAnh ="ASUS/asus-x407ua-i37020u-4gb-1tb-14-win1-0-bv345t-xam-2-2-600x600.jpg",
                    GiaBan = 160000000,
                    HangID = 4
                },
            };
            return LapTops;
        }
    }
}
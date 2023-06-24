using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySqlX.XDevAPI;
using pizzaweb.Models;
using Microsoft.AspNetCore.Mvc.RazorPages;
using pizzaweb.Models.Tables;
using pizzaweb.Infrastructure;

namespace pizzaweb.Controllers
{
    public class CartController : Controller
    {
        /*
        public Cart? Cart { get; set; }
        
        private readonly pizzawebContext _context;

        public CartController(pizzawebContext context)
        {
            _context = context;
        }
        

        pizzaweb.Models.Tables.pizzawebContext db = new pizzawebContext();

        public IActionResult AddToCart(int productId)
        {
            
            TblProduct? product = db.TblProducts.FirstOrDefault( p=> p.Id == productId); 
            if(product != null)
            {
                Cart = HttpContext.Session.GetJson<Cart>("cart") ?? new Cart();
                Cart.AddItem(product, 1);
                HttpContext.Session.SetJson("cart", Cart);
                return View();
            }

            return View("Cart", Cart);

        }
        */

        public IActionResult Index() {
            var cart = HttpContext.Session.GetJson<ShopingCart>("Cart");
            if (cart != null)
            {
                return View(cart.Items);
            }

            return View(); 
        }

        public IActionResult AddToCart(int id, int quantity)
        {
            var code = new { Succsess = false, msg = "lỗi", code = -1, Count = 0 };
            pizzaweb.Models.Tables.pizzawebContext db = new pizzawebContext();
            var checkProduct = db.TblProducts.FirstOrDefault(x => x.Id == id);
            if(checkProduct != null) 
            {
                var cart = new ShopingCart();
                HttpContext.Session.SetJson("Cart", cart);
                if (cart == null) 
                {
                    cart = new ShopingCart();
                }
                ShopingCartItem item = new ShopingCartItem()
                {
                    ProductId = checkProduct.Id,
                    ProductName = checkProduct.Title,
                 //   CategoryName = checkProduct?.Category?.Name,
                    Quantity = quantity

                };
               
                item.Price = checkProduct.Price;

                item.TotalPrice = item.Price * item.Quantity;
                cart.AddToCartShopingCartItem(item, quantity);
                HttpContext.Session.SetJson("Cart",cart);

                code = new { Succsess = true, msg = "Thêm sản phẩm vào giỏ hàng thành công", code = 1, Count =  cart.Items.Count};
            }
            

            return Json(code);
        }

    }
}

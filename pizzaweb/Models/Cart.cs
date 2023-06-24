using pizzaweb.Models.Tables;

namespace pizzaweb.Models
{
    public class Cart
    {
        public List<CartLine> Lines { get; set; } = new List<CartLine>();

        public void AddItem(TblProduct product, int quantity)
        {
            CartLine? line = Lines
            .Where(p => p.Product.Id == product.Id).FirstOrDefault();
            if (line == null)
            {
                Lines .Add(new CartLine() {  Product = product, Quantity = quantity });
            }
            else
            {
                line.Quantity += quantity;
            }
        }

        public void RemoveLine(TblProduct product) => Lines.RemoveAll(l =>  l.Product.Id == product.Id);

        public decimal ComputeTotalValues() { return (decimal)Lines.Sum(e => e.Product?.Price * e.Quantity); }

        public void Clear() => Lines.Clear();
    }

    public class CartLine
    {
        public int CartLineID { get; set; }
        public TblProduct Product { get; set; } = new();
        public int Quantity { get; set; }
    }

    

}

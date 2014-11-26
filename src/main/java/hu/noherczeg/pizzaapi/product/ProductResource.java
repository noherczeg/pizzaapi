package hu.noherczeg.pizzaapi.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
class ProductResource {

    private ProductRepository productRepository;

    @Autowired
    public ProductResource(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @RequestMapping(value = "/products")
    public List<Product> listCategories () {
        return (List<Product>) productRepository.findAll();
    }

    @RequestMapping(value = "/products", method = RequestMethod.POST)
    public Product createCategory (@RequestBody Product product) {
        return productRepository.save(product);
    }

    @RequestMapping(value = "/products/{productId}")
    public Product findById (@PathVariable Long productId) {
        return productRepository.findOne(productId);
    }

    @RequestMapping(value = "/products/{productId}", method = RequestMethod.PUT)
    public Product updateCategory (@RequestBody Product product) {
        return productRepository.save(product);
    }

    @RequestMapping(value = "/products/{productId}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.OK)
    public void deleteCategory(@PathVariable Long productId) {
        productRepository.delete(productId);
    }
}

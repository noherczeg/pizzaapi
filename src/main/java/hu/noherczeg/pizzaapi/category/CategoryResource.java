package hu.noherczeg.pizzaapi.category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
class CategoryResource {

    private CategoryRepository categoryRepository;

    @Autowired
    public CategoryResource(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    @RequestMapping(value = "/categories")
    public List<Category> listCategories () {
        return (List<Category>) categoryRepository.findAll();
    }

    @RequestMapping(value = "/categories", method = RequestMethod.POST)
    public Category createCategory (@RequestBody Category category) {
        return categoryRepository.save(category);
    }

    @RequestMapping(value = "/categories/{categoryId}")
    public Category findById (@PathVariable Long categoryId) {
        return categoryRepository.findOne(categoryId);
    }

    @RequestMapping(value = "/categories/{categoryId}", method = RequestMethod.PUT)
    public Category updateCategory (@RequestBody Category category) {
        return categoryRepository.save(category);
    }

    @RequestMapping(value = "/categories/{categoryId}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.OK)
    public void deleteCategory(@PathVariable Long categoryId) {
        categoryRepository.delete(categoryId);
    }

}

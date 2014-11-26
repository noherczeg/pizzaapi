package hu.noherczeg.pizzaapi.product;

import org.springframework.data.repository.PagingAndSortingRepository;

interface ProductRepository extends PagingAndSortingRepository<Product, Long> {
}

package hu.noherczeg.pizzaapi.category;

import org.springframework.data.repository.PagingAndSortingRepository;

interface CategoryRepository extends PagingAndSortingRepository<Category, Long> {
}

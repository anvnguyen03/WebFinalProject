package NoiThat.DAO;

import java.util.List;

import NoiThat.Entity.Category;
import NoiThat.Entity.Product;

public interface IProductDAO {
	List<Product> findAllProduct();
	void insert(Product product);
	void update(Product product);
	List<Product> findProductByCateID(int cateid);
	List<Product> findProductByCateParensID(int cateparentsid);
	List<Product> findTop6LatestProduct();
	int countAll();
	// paging
	List<Product> findProductByPage(int page, int pagesize);
	List<Product> findProductByCateIDPaging(int cateid, int page, int pagesize);
	List<Product> findProductByCateParensIDPaging(int cateparentsid, int page, int pagesize);
}

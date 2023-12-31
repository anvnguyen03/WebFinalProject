package NoiThat.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import NoiThat.Entity.Product;
import NoiThat.JPAConfig.JPAConfig;

public class ProductDAOImpl implements IProductDAO{

//	 public static void main(String[] args) {
//			IProductDAO pro = new ProductDAOImpl();
////			System.out.println(pro.countAll());
////			System.out.println(pro.findAllProduct());
////			System.out.println(pro.findProductByCateID(1));
////			System.out.println((pro.findProductByPage(0, 12)).size());
////			System.out.println(pro.findProductByCateParensID(1));
//			System.out.println(pro.findOne(1));
//		}
	
	@Override
	public List<Product> findAllProduct() {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Product> query = enma.createNamedQuery("Product.findAll", Product.class);
		return query.getResultList();
	}

	@Override
	public void insert(Product product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.persist(product);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}

	@Override
	public void update(Product product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.merge(product);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}
	
	@Override
	public void delete(int productID, int newState) throws Exception {
	    EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();

	    try {
	        trans.begin();

	        // Tìm sản phẩm theo productID
	        Product product = enma.find(Product.class, productID);

	        if (product != null) {
	            // Cập nhật trạng thái của sản phẩm
	            product.setState(newState);
	            enma.merge(product);
	        } else {
	            // Xử lý khi không tìm thấy sản phẩm
	            System.out.println("Không tìm thấy sản phẩm với ID: " + productID);
	        }

	        trans.commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        trans.rollback();
	        throw e;
	    } finally {
	        enma.close();
	    }
	}


	@Override
	public int countAll() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT count(c) FROM Product c";
		javax.persistence.Query query = enma.createQuery(jpql);
		return ((Long)query.getSingleResult()).intValue();
	}

	@Override
	public List<Product> findProductByCateID(int cateid) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "WHERE p.category.cateID = :cateid";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setParameter("cateid", cateid);
		return query.getResultList();
	}

	@Override
	public List<Product> findProductByCateParensID(int cateparentsid) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "JOIN p.category c " +
					  "JOIN c.cateParent cp " +
					  "WHERE cp.cateParentsID = :cateParentsID";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setParameter("cateParentsID", cateparentsid);
		return query.getResultList();
	}

	@Override
	public List<Product> findTop12LatestProduct() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "ORDER BY p.productID " +
					  "DESC";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setMaxResults(12);
		return query.getResultList();
	}
	
	@Override
	public List<Product> findProductByPage(int page, int pagesize) {

		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Product> query = enma.createNamedQuery("Product.findAll", Product.class);
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		return query.getResultList();

	}

	@Override
	public List<Product> findProductByCateIDPaging(int cateid, int page, int pagesize) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "WHERE p.category.cateID = :cateid";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setParameter("cateid", cateid);
		
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		
		return query.getResultList();
	}

	@Override
	public List<Product> findProductByCateParensIDPaging(int cateparentsid, int page, int pagesize) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "JOIN p.category c " +
					  "JOIN c.cateParent cp " +
					  "WHERE cp.cateParentsID = :cateParentsID";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setParameter("cateParentsID", cateparentsid);
		
		query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);
		
		return query.getResultList();
	}

	@Override
	public Product findOne(int productid) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Product p " +
					  "WHERE p.productID = :productid";
		TypedQuery<Product> query = enma.createQuery(jpql, Product.class);
		query.setParameter("productid", productid);
		return query.getSingleResult();
	}

	@Override
	public List<Product> findProductsByName(String productName) {
		EntityManager entityManager = JPAConfig.getEntityManager();

	    String jpql = "SELECT p FROM Product p " +
	                  "WHERE LOWER(p.productName) LIKE :productName";
	    
	    TypedQuery<Product> query = entityManager.createQuery(jpql, Product.class);
	    query.setParameter("productName", "%" + productName.toLowerCase() + "%");

	    return query.getResultList();
	}

	@Override
	public List<Product> findProductsByNamePaging(String productName, int page, int pagesize) {
		EntityManager entityManager = JPAConfig.getEntityManager();

	    String jpql = "SELECT p FROM Product p " +
	                  "WHERE LOWER(p.productName) LIKE :productName";
	    
	    TypedQuery<Product> query = entityManager.createQuery(jpql, Product.class);
	    query.setParameter("productName", "%" + productName.toLowerCase() + "%");
	    
	    query.setFirstResult(page * pagesize);
		query.setMaxResults(pagesize);

	    return query.getResultList();
	}


}

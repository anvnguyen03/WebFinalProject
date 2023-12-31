<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- ...:::: Start Breadcrumb Section:::... -->
<div class="breadcrumb-section breadcrumb-bg-color--golden">
    <div class="breadcrumb-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="breadcrumb-title">Product Details</h3>
                    <div class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                        <nav aria-label="breadcrumb">
                            <ul>
                                <li><a href="<c:url value="/home"/>">Home</a></li>
                                <li><a href="<c:url value="/shop/allproduct"/>">Shop</a></li>
                                <li class="active" aria-current="page">Product Details</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- ...:::: End Breadcrumb Section:::... -->

<!-- Start Product Details Section -->
<c:set var="product" value="${product_detailed}"/>
<div class="product-details-section">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-6">
                <div class="product-details-gallery-area" data-aos="fade-up"  data-aos-delay="0">
                    <!-- Start Large Image -->
                    <div class="product-large-image product-large-image-horaizontal swiper-container">
                            <div class="swiper-wrapper">
                            	<c:if test="${product.imgLink1 != null}">
	                                <div class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
	                                    <img src="<c:url value="/uploads/${product.imgLink1}"/>" alt="">
	                                </div>
	                            </c:if>
	                            <c:if test="${product.imgLink2 != null}">
	                                <div class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
	                                    <img src="<c:url value="/uploads/${product.imgLink2}"/>" alt="">
	                                </div>
	                            </c:if>
	                            <c:if test="${product.imgLink3 != null}">
	                                <div class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
	                                    <img src="<c:url value="/uploads/${product.imgLink3}"/>" alt="">
	                                </div>
                                </c:if>
	                            <c:if test="${product.imgLink4 != null}">
	                                <div class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
	                                    <img src="<c:url value="/uploads/${product.imgLink4}"/>" alt="">
	                                </div>
                                </c:if>
	                            <c:if test="${product.imgLink5 != null}">
	                                <div class="product-image-large-image swiper-slide zoom-image-hover img-responsive">
	                                    <img src="<c:url value="/uploads/${product.imgLink5}"/>" alt="">
	                                </div>
                                </c:if>
                            </div>
                    </div>
                    <!-- End Large Image -->
                     <!-- Start Thumbnail Image -->
                    <div class="product-image-thumb product-image-thumb-horizontal swiper-container pos-relative mt-5">
                            <div class="swiper-wrapper">
                            	<c:if test="${product.imgLink1 != null}">
	                                <div class="product-image-thumb-single swiper-slide">
	                                    <img class="img-fluid" src="<c:url value="/uploads/${product.imgLink1}"/>" alt="">
	                                </div>
                                </c:if>
                                <c:if test="${product.imgLink2 != null}">
	                                <div class="product-image-thumb-single swiper-slide">
	                                    <img class="img-fluid" src="<c:url value="/uploads/${product.imgLink2}"/>" alt="">
	                                </div>
                                </c:if>
                                <c:if test="${product.imgLink3 != null}">
	                                <div class="product-image-thumb-single swiper-slide">
	                                    <img class="img-fluid" src="<c:url value="/uploads/${product.imgLink3}"/>" alt="">
	                                </div>
                                </c:if>
                                <c:if test="${product.imgLink4 != null}">
	                                <div class="product-image-thumb-single swiper-slide">
	                                    <img class="img-fluid" src="<c:url value="/uploads/${product.imgLink4}"/>" alt="">
	                                </div>
                                </c:if>
                                <c:if test="${product.imgLink5 != null}">
	                                <div class="product-image-thumb-single swiper-slide">
	                                    <img class="img-fluid" src="<c:url value="/uploads/${product.imgLink5}"/>" alt="">
	                                </div>
                                </c:if>
                        </div>
                        <!-- Add Arrows -->
                        <div class="gallery-thumb-arrow swiper-button-next"></div>
                        <div class="gallery-thumb-arrow swiper-button-prev"></div>
                    </div>
                     <!-- End Thumbnail Image -->
                </div>
            </div>
            <div class="col-xl-7 col-lg-6">
                <div class="product-details-content-area product-details--golden" data-aos="fade-up"  data-aos-delay="200">
                    <!-- Start  Product Details Text Area-->
                    <div class="product-details-text">
                        <h4 class="title">${product.productName}</h4>
                        <div class="d-flex align-items-center">
                            <!-- <ul class="review-star">
                                <li class="fill"><i class="ion-android-star"></i></li>
                                <li class="fill"><i class="ion-android-star"></i></li>
                                <li class="fill"><i class="ion-android-star"></i></li>
                                <li class="fill"><i class="ion-android-star"></i></li>
                                <li class="empty"><i class="ion-android-star"></i></li>
                            </ul> -->
                            <!-- <a href="#" class="customer-review ml-2">(customer review )</a> -->
                        </div>
                        <div class="price"><span class="price">$<fmt:formatNumber value="${product.price}" pattern="#,###,###.##" /></span></div>
                        <p>${product.description}</p>
                    </div> <!-- End  Product Details Text Area-->
                    <!-- Start Product Variable Area -->
                    <div class="product-details-variable">
                        <h4 class="title">Available Options</h4>
                        <!-- Product Variable Single Item -->
                        <c:if test="${product.stoke != 0}">
	                        <div class="variable-single-item">
	                            <div class="product-stock"> <span class="product-stock-in"><i class="ion-checkmark-circled"></i></span> ${product.stoke} IN STOCK</div>
	                        </div>
                        </c:if>
                        <c:if test="${product.stoke == 0}">
	                        <div class="variable-single-item">
	                            <div class="product-stock"> <span class="product-stock-in"><i class="ion-close-circled"></i></span> ${product.stoke} IN STOCK</div>
	                        </div>
                        </c:if>
                        <!-- Product Variable Single Item -->
                        <div class="d-flex align-items-center ">
                            <div class="variable-single-item ">
                                <span>Quantity</span>
                                <div class="product-variable-quantity">
                                    <input id="quantityInput" min="1" max="${product.stoke}" value="1" type="number">
                                </div>
                            </div>
                            
							<c:if test="${product.stoke != 0}">
								<div class="product-add-to-cart-btn">
	                                <a href="#" onclick="addToCart('<c:url value="/addtocart?id=${product.productID}"/>', event)" class="btn btn-block btn-lg btn-black-default-hover">+ Add To Cart</a>
	                            </div>
	                        </c:if>
	                        <c:if test="${product.stoke == 0}">
								<div class="product-add-to-cart-btn">
	                                <a href="#" class="btn btn-block btn-lg btn-black-default-hover">Out of stock</a>
	                            </div>
	                        </c:if>
                        </div>
                        <!-- Start  Product Details Meta Area-->
                        <div class="product-details-meta mb-20">
                            <!-- <a href="wishlist.html" class="icon-space-right"><i class="icon-heart"></i>Add to wishlist</a> -->
                        </div> 
                        <!-- End  Product Details Meta Area-->
                    </div> 
                    <!-- End Product Variable Area -->
                    
                    <!-- Start  Product Details Catagories Area-->
                    <div class="product-details-catagory mb-2">
                        <span class="title">CATEGORY:</span>
                        <ul>
                            <li><a href="<c:url value="/shop/findByCategory?categoryid=${product.category.cateID}"/>">${product.category.cateName}</a></li>
                        </ul>
                    </div> <!-- End  Product Details Catagories Area-->
                    <!-- Start  Product Details Social Area-->
                    <div class="product-details-social">
                        <span class="title">SHARE THIS PRODUCT:</span>
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div> <!-- End  Product Details Social Area-->
                </div>
            </div>
        </div>
    </div>
</div> <!-- End Product Details Section -->

<!-- Start Product Content Tab Section -->
<div class="product-details-content-tab-section section-top-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="product-details-content-tab-wrapper" data-aos="fade-up"  data-aos-delay="0">

                    <!-- Start Product Details Tab Button -->
                    <ul class="nav tablist product-details-content-tab-btn d-flex justify-content-center">
                        <li><a class="nav-link active" data-bs-toggle="tab" href="#description">
                                Description
                            </a></li>
                        <li><a class="nav-link" data-bs-toggle="tab" href="#information">
                               	Information
                            </a></li>
                        <!-- <li><a class="nav-link" data-bs-toggle="tab" href="#review">
                                Reviews (1)
                            </a></li> -->
                    </ul> 
                    <!-- End Product Details Tab Button -->

                    <!-- Start Product Details Tab Content -->
                    <div class="product-details-content-tab">
                        <div class="tab-content">
                            <!-- Start Product Details Tab Content Singel -->
                            <div class="tab-pane active show" id="description">
                                <div class="single-tab-content-item">
                                    <p>${product.description}</p>
                                </div>
                            </div> 
                            <!-- End Product Details Tab Content Singel -->
                            <!-- Start Product Details Tab Content Singel -->
                            <div class="tab-pane active show" id="information">
                                <div class="single-tab-content-item">
                                    <p>${product.information}</p>
                                </div>
                            </div>  
                            <!-- End Product Details Tab Content Singel -->
                        </div>
                    </div> 
                    <!-- End Product Details Tab Content -->

                </div>
            </div>
        </div>
    </div>
</div> <!-- End Product Content Tab Section -->

<!-- Start Product Default Slider Section -->
<div class="product-default-slider-section section-top-gap-100 section-fluid">
    <!-- Start Section Content Text Area -->
    <div class="section-title-wrapper" data-aos="fade-up"  data-aos-delay="0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-content-gap">
                        <div class="secton-content">
                            <h3  class="section-title">RELATED PRODUCTS</h3>
                            <p>Browse the collection of our related products.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Section Content Text Area -->
    <div class="product-wrapper" data-aos="fade-up"  data-aos-delay="0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product-slider-default-1row default-slider-nav-arrow">
                        <!-- Slider main container -->
                        <div class="swiper-container product-default-slider-4grid-1row">
                            <!-- Additional required wrapper -->
                            <div class="swiper-wrapper">
                                <c:forEach items="${relatedProducts}" var="u" begin="0" end="5">
	                                <!-- Start Product Default Single Item -->
	                                <div class="product-default-single-item product-color--golden swiper-slide">
	                                    <div class="image-box">
	                                        <a href="<c:url value="/shop/productdetails?id=${u.productID}"/>" class="image-link">
	                                            <img src="<c:url value="/uploads/${u.imgLink1}"/>" alt="">
	                                            <img src="<c:url value="/uploads/${u.imgLink2}"/>" alt="">
	                                        </a>
	                                        <div class="action-link">
	                                            <c:if test="${u.stoke != 0}">
		                                            <div class="action-link-left">
		                                                <a href="<c:url value="/addtocart?id=${u.productID}"/>" data-bs-target="#modalAddcart">Add to Cart</a>
		                                            </div>
	                                            </c:if>
	                                            <c:if test="${u.stoke == 0}">
		                                            <div class="action-link-left">
		                                                <a href="#" >Out of Stock</a>
		                                            </div>
	                                            </c:if>
	                                            <div class="action-link-right">
	                                                <a href="<c:url value="/shop/productdetails?id=${u.productID}"/>" data-bs-target="#modalQuickview"><i class="icon-magnifier"></i></a>
	                                                <!-- <a href="wishlist.html"><i class="icon-heart"></i></a> -->
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="content">
	                                        <div class="content-left">
	                                            <h6 class="title"><a href="<c:url value="/shop/productdetails?id=${u.productID}"/>">${u.productName}</a></h6>
	                                            <!-- <ul class="review-star">
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="empty"><i class="ion-android-star"></i></li>
	                                            </ul> -->
	                                        </div>
	                                        <div class="content-right">
	                                           <span class="price"><fmt:formatNumber value="${u.price}" pattern="#,###,###.##" />$</span>
	                                        </div>
	
	                                    </div>
	                                </div>
	                                <!-- End Product Default Single Item -->
	                        	</c:forEach>
                            </div>
                        </div>
                        <!-- If we need navigation buttons -->
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
<!-- End Product Default Slider Section -->

<script>
	
	const input = document.getElementById('quantityInput');
	//Lắng nghe sự kiện 'input' khi giá trị thay đổi
	input.addEventListener('input', function() {
	 // Lấy giá trị hiện tại của input
	 let value = parseInt(this.value);
	 const maxValue = parseInt(this.max);
	
	 // Kiểm tra nếu giá trị vượt quá giá trị max thì giới hạn lại
	 if (value > maxValue) {
	     value = maxValue;
	     this.value = value;
	 }
	});
	
    function addToCart(addProductIdLink, event) {
    	event.preventDefault(); // Ngăn chặn hành vi mặc định của thẻ <a>
    	
        var quantity = document.getElementById('quantityInput').value;
        var url = addProductIdLink + '&quantity=' + quantity;
        console.log("quantity: ", quantity);
        console.log("url: ", url);
        window.location.href = url;
    }
</script>
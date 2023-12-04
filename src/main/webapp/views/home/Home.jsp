<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

<!-- Start Hero Slider Section-->
<div class="hero-slider-section">
    <!-- Slider main container -->
    <div class="hero-slider-active swiper-container">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Start Hero Single Slider Item -->
            <div class="hero-single-slider-item swiper-slide">
                <!-- Hero Slider Image -->
                <div class="hero-slider-bg">
                    <img src="<c:url value="/templates/assets/images/hero-slider/home-1/hero-slider-1.jpg"/>" alt="">
                </div>
                <!-- Hero Slider Content -->
                <div class="hero-slider-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-auto">
                                <div class="hero-slider-content">
                                    <h4 class="subtitle">New collection</h4>
                                    <h2 class="title">Best Of NeoCon <br> Gold Award </h2>
                                    <a href="<c:url value="/shop/allproduct"/>" class="btn btn-lg btn-outline-golden">shop now </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- End Hero Single Slider Item -->
            <!-- Start Hero Single Slider Item -->
            <div class="hero-single-slider-item swiper-slide">
                <!-- Hero Slider Image -->
                <div class="hero-slider-bg">
                    <img src="<c:url value="/templates/assets/images/hero-slider/home-1/hero-slider-2.jpg"/>" alt="">
                </div>
                <!-- Hero Slider Content -->
                <div class="hero-slider-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-auto">
                                <div class="hero-slider-content">
                                    <h4 class="subtitle">New collection</h4>
                                    <h2 class="title">Luxy Chairs <br> Design Award </h2>
                                    <a href="<c:url value="/shop/allproduct"/>" class="btn btn-lg btn-outline-golden">shop now </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- End Hero Single Slider Item -->
        </div>

        <!-- If we need pagination -->
        <div class="swiper-pagination active-color-golden"></div>

        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev d-none d-lg-block"></div>
        <div class="swiper-button-next d-none d-lg-block"></div>
    </div>
</div> 
<!-- End Hero Slider Section-->

<!-- Start Service Section -->
<div class="service-promo-section section-top-gap-100">
    <div class="service-wrapper">
        <div class="container">
            <div class="row">
                <!-- Start Service Promo Single Item -->
                <div class="col-lg-3 col-sm-6 col-12">
                    <div class="service-promo-single-item" data-aos="fade-up"  data-aos-delay="0">
                       <div class="image">
                            <img src="<c:url value="/templates/assets/images/icons/service-promo-1.png"/>" alt="">
                       </div>
                        <div class="content">
                            <h6 class="title">FREE SHIPPING</h6>
                            <p>Get 10% cash back, free shipping, free returns, and more at 1000+ top retailers!</p>
                        </div>
                    </div>
                </div>
                <!-- End Service Promo Single Item -->
                <!-- Start Service Promo Single Item -->
                <div class="col-lg-3 col-sm-6 col-12">
                    <div class="service-promo-single-item" data-aos="fade-up"  data-aos-delay="200">
                       <div class="image">
                            <img src="<c:url value="/templates/assets/images/icons/service-promo-2.png"/>" alt="">
                       </div>
                        <div class="content">
                            <h6 class="title">30 DAYS MONEY BACK</h6>
                            <p>100% satisfaction guaranteed, or get your money back within 30 days!</p>
                        </div>
                    </div>
                </div>
                <!-- End Service Promo Single Item -->
                <!-- Start Service Promo Single Item -->
                <div class="col-lg-3 col-sm-6 col-12">
                    <div class="service-promo-single-item" data-aos="fade-up"  data-aos-delay="400">
                       <div class="image">
                            <img src="<c:url value="/templates/assets/images/icons/service-promo-3.png"/>" alt="">
                       </div>
                        <div class="content">
                            <h6 class="title">SAFE PAYMENT</h6>
                            <p>Pay with the world’s most popular and secure payment methods.</p>
                        </div>
                    </div>
                </div>
                <!-- End Service Promo Single Item -->
                <!-- Start Service Promo Single Item -->
                <div class="col-lg-3 col-sm-6 col-12">
                    <div class="service-promo-single-item" data-aos="fade-up"  data-aos-delay="600">
                       <div class="image">
                            <img src="<c:url value="/templates/assets/images/icons/service-promo-4.png"/>" alt="">
                       </div>
                        <div class="content">
                            <h6 class="title">LOYALTY CUSTOMER</h6>
                            <p>Card for the other 30% of their purchases at a rate of 1% cash back.</p>
                        </div>
                    </div>
                </div>
                <!-- End Service Promo Single Item -->
            </div>
        </div>
    </div>
</div>
<!-- End Service Section -->

<!-- Start Product Default Slider Section -->
<div class="product-default-slider-section section-top-gap-100 section-fluid">
    <!-- Start Section Content Text Area -->
    <div class="section-title-wrapper" data-aos="fade-up"  data-aos-delay="0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-content-gap">
                        <div class="secton-content">
                            <h3 class="section-title">THE NEW ARRIVALS</h3>
                            <p>Preorder now to receive exclusive deals & gifts</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Section Content Text Area -->
    <div class="product-wrapper" data-aos="fade-up"  data-aos-delay="200">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product-slider-default-2rows default-slider-nav-arrow">
                        <!-- Slider main container -->
                        <div class="swiper-container product-default-slider-4grid-2row">
                            <!-- Additional required wrapper -->
                            <div class="swiper-wrapper">
                            	<c:forEach items="${listlatestprod}" var="i">
	                                <!-- Start Product Default Single Item -->
	                                <div class="product-default-single-item product-color--golden swiper-slide">
	                                    <div class="image-box">
	                                        <a href="<c:url value="/shop/productdetails?id=${i.productID}"/>" class="image-link">
	                                            <img src="<c:url value="/uploads/${i.imgLink1}"/>" alt="">
	                                            <img src="<c:url value="/uploads/${i.imgLink2}"/>" alt="">
	                                        </a>
	                                        <div class="tag">
	                                            <span>new</span>
	                                        </div>
	                                        <div class="action-link">
	                                            <div class="action-link-left">
	                                                <a href="#" data-bs-target="#modalAddcart">Add to Cart</a>
	                                            </div>
	                                            <div class="action-link-right">
	                                                <a href="<c:url value="/shop/productdetails?id=${i.productID}"/>" data-bs-target="#modalQuickview"><i class="icon-magnifier"></i></a>
	                                                <a href="wishlist.html"><i class="icon-heart"></i></a>
	                                                <!-- <a href="compare.html"><i class="icon-shuffle"></i></a> -->
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="content">
	                                        <div class="content-left">
	                                            <h6 class="title"><a href="<c:url value="/shop/productdetails?id=${i.productID}"/>">${i.productName}</a></h6>
	                                            <!-- <ul class="review-star">
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="fill"><i class="ion-android-star"></i></li>
	                                                <li class="empty"><i class="ion-android-star"></i></li>
	                                            </ul> -->
	                                        </div>
	                                        
	                                    </div>
	                                    <div class="content-right">
	                                            <span class="price"><fmt:formatNumber value="${i.price}" pattern="#,###,###.##" />$</span>
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
 
<!-- Start Banner Section -->
<div class="banner-section section-top-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 offset-xl-2">
                <!-- Start Banner Single Item -->
                <div class="banner-single-item banner-style-3 banner-animation img-responsive" data-aos="fade-up"  data-aos-delay="0">
                    <div class="image">
                        <img class="img-fluid" src="<c:url value="/templates/assets/images/banner/banner-style-3-img-1.jpg"/>" alt="">
                    </div>
                    <div class="content">
                        <h3 class="title">Modern Furniture
                            Basic Collection</h3>
                        <h5 class="sub-title">We design your home more beautiful</h5>
                        <a href="<c:url value="/shop/allproduct"/>" class="btn btn-lg btn-outline-golden icon-space-left"><span class="d-flex align-items-center">discover now <i class="ion-ios-arrow-thin-right"></i></span></a>
                    </div>
                </div> 
                <!-- End Banner Single Item -->
            </div>
        </div>
    </div>
</div>
<!-- End Banner Section -->

<!-- Start Product Default Slider Section -->
<div class="product-default-slider-section section-top-gap-100 section-fluid section-inner-bg">
    <!-- Start Section Content Text Area -->
    <div class="section-title-wrapper" data-aos="fade-up"  data-aos-delay="0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-content-gap">
                        <div class="secton-content">
                            <h3  class="section-title">BEST SELLERS</h3>
                            <p>Add our best sellers to your weekly lineup.</p>
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
                            
                                <!-- Start Product Default Single Item -->
                                <div class="product-default-single-item product-color--golden swiper-slide">
                                    <div class="image-box">
                                        <a href="<c:url value="/shop/productdetails?id=${i.productID}"/>" class="image-link">
                                            <img src="<c:url value="/templates/assets/images/product/default/home-1/default-9.jpg"/>" alt="">
                                            <img src="<c:url value="/templates/assets/images/product/default/home-1/default-10.jpg"/>" alt="">
                                        </a>
                                        <div class="action-link">
                                            <div class="action-link-left">
                                                <a href="#" data-bs-target="#modalAddcart">Add to Cart</a>
                                            </div>
                                            <div class="action-link-right">
                                                <a href="<c:url value="/shop/productdetails?id=${i.productID}"/>" data-bs-target="#modalQuickview"><i class="icon-magnifier"></i></a>
                                                <a href="wishlist.html"><i class="icon-heart"></i></a>
                                                <!-- <a href="compare.html"><i class="icon-shuffle"></i></a> -->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content">
                                        <div class="content-left">
                                            <h6 class="title"><a href="<c:url value="/shop/productdetails?id=${i.productID}"/>">Epicuri per lobortis</a></h6>
                                            <ul class="review-star">
                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                <li class="fill"><i class="ion-android-star"></i></li>
                                                <li class="empty"><i class="ion-android-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="content-right">
                                            <span class="price">$68</span>
                                        </div>

                                    </div>
                                </div>
                                <!-- End Product Default Single Item -->
                                
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

<!-- Start Banner Section -->
<div class="banner-section">
     <div class="banner-wrapper clearfix">
     	<c:forEach items="${listcatepa}" var="i">
     		<c:if test="${i.state == 1}">
		        <!-- Start Banner Single Item -->
		        <div class="banner-single-item banner-style-4 banner-animation banner-color--golden float-left img-responsive" data-aos="fade-up"  data-aos-delay="0">
		            <div class="image">
		                <img class="img-fluid" src="<c:url value="/uploads/${i.categories[0].product[0].imgLink5}"/>" alt="">
		            </div>
		            <a href="<c:url value="/shop/findByCateParents?categoryparentsid=${i.cateParentsID}"/>" class="content">
		                <div class="inner">
		                    <h4 class="title">${i.cateParentsName}</h4>
		                    <%-- <h6 class="sub-title">${i.categories[0].product[0].productID}</h6> --%>
		                </div>
		                <span class="round-btn"><i class="ion-ios-arrow-thin-right"></i></span>
		            </a>
		        </div> 
		        <!-- End Banner Single Item -->
	        </c:if>
        </c:forEach>
     </div>
</div>
<!-- End Banner Section -->
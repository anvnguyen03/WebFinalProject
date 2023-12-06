<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- ...:::: Start Breadcrumb Section:::... -->
<div class="breadcrumb-section breadcrumb-bg-color--golden">
    <div class="breadcrumb-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="breadcrumb-title">Checkout</h3>
                    <div class="breadcrumb-nav breadcrumb-nav-color--black breadcrumb-nav-hover-color--golden">
                        <nav aria-label="breadcrumb">
                            <ul>
                                <li><a href="<c:url value="/home"/>">Home</a></li>
                                <li><a href="<c:url value="/shop/allproduct"/>">Shop</a></li>
                                <li class="active" aria-current="page">Checkout</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- ...:::: End Breadcrumb Section:::... -->

<!-- ...:::: Start Checkout Section:::... -->
<div class="checkout-section">
    <div class="container">
        <!-- Start User Details Checkout Form -->
        <div class="checkout_form" data-aos="fade-up"  data-aos-delay="400">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <form action="addbill" method="post">
                        <h3>Billing Details</h3>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="default-form-box">
                                    <label>Full name</label>
                                    <input type="text" value="${account.fullname}" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="default-form-box">
                                    <label>Email address</label>
                                    <input type="text" value="${account.email}" readonly="readonly">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="default-form-box">
                                    <label>Address <span>*</span></label>
                                    <input type="text" name="address">
                                </div>
                            </div><div class="col-12">
                                <div class="default-form-box">
                                    <label>Phone <span>*</span></label>
                                    <input type="text" name="phone">
                                </div>
                            </div>
                            <div class="order_button pt-3">
                                <button class="btn btn-md btn-black-default-hover" type="submit">Checkout</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 col-md-6">
                    <form action="#">
                        <h3>Your order</h3>
                        <div class="order_table table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${cartitems}" var="i">
	                                    <tr>
	                                        <td> ${i.product.productName} <strong> × ${i.quantity}</strong></td>
	                                        <td> <span class="price">$<fmt:formatNumber value="${i.product.price*i.quantity}" pattern="#,###,###.##" /></span></td>
	                                    </tr>
                                   	</c:forEach>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Cart Subtotal</th>
                                        <td>$<fmt:formatNumber value="${total}" pattern="#,###,###.##" /></td>
                                    </tr>
                                    <tr>
                                        <th>Shipping</th>
                                        <td><strong>$1000.00</strong></td>
                                    </tr>
                                    <tr class="order_total">
                                        <th>Order Total</th>
                                        <td><strong>$<fmt:formatNumber value="${total+1000.00}" pattern="#,###,###.##" /></strong></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        <div class="payment_method">
                            <div class="panel-default">
                                <label class="checkbox-default" for="currencyCod" data-bs-toggle="collapse" data-bs-target="#methodCod">
                                    <input type="checkbox" id="currencyCod">
                                    <span>Cash on Delivery</span>
                                </label>

                                <div id="methodCod" class="collapse" data-parent="#methodCod">
                                    <div class="card-body1">
                                        <p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> 
        <!-- Start User Details Checkout Form -->
    </div>
</div>
<!-- ...:::: End Checkout Section:::... -->
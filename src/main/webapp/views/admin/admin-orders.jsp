<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->
        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="<c:url value="/home"/>" class="app-brand-link">
              <img src="<c:url value="/templates/img/hero/logo.png" />">
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboards -->
            <li class="menu-item">
              <a href="javascript:void(0);" class="menu-link menu-toggle">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="Dashboards">Dashboards</div>
                <!-- <div class="badge bg-danger rounded-pill ms-auto">5</div> -->
              </a>
              <ul class="menu-sub">
                <li class="menu-item">
                  <a
                    href="<c:url value="/admin/cateparents"/>"
                    class="menu-link">
                    <div data-i18n="CRM">Category Parents</div>
                    <!-- <div class="badge bg-label-primary fs-tiny rounded-pill ms-auto">Pro</div> -->
                  </a>
                </li>
                <li class="menu-item">
                  <a href="<c:url value="/admin/category"/>" 
                  	 class="menu-link">
                    <div data-i18n="Analytics">Category</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="<c:url value="/admin/products"/>"
                    class="menu-link">
                    <div data-i18n="eCommerce">Products</div>
                  </a>
                </li>
                <li class="menu-item">
                  <a
                    href="<c:url value="/admin/users"/>"
                    class="menu-link">
                    <div data-i18n="Logistics">Users</div>
                  </a>
                </li>
              </ul>
            </li>

            <li class="menu-item">
              <a
                href="<c:url value="/admin/home"/>"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-bar-chart"></i>
                <div data-i18n="Email">Quản lí doanh thu</div>
              </a>
            </li>
            
            <li class="menu-item active">
              <a
                href="<c:url value="/admin/orders"/>"
                class="menu-link">
                <i class="menu-icon tf-icons bx bx-receipt"></i>
                <div data-i18n="Email">Quản lí đơn hàng</div>
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Navbar -->
          <nav
            class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
            id="layout-navbar">
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              <div class="navbar-nav align-items-center">
                <div class="nav-item d-flex align-items-center">
                 Admin Page
                 
                </div>
              </div>
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="<c:url value="/templates/admin-templates/assets/img/avatars/1.png"/>" alt class="w-px-40 h-auto rounded-circle" />
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="<c:url value="/templates/admin-templates/assets/img/avatars/1.png"/>" alt class="w-px-40 h-auto rounded-circle" />
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-medium d-block">${account.fullname}</span>
                            <small class="text-muted">${account.userrole.roleName}</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="<c:url value="/logout"/>">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->
          
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
             	<h4 class="py-3 mb-4"><span class="text-muted fw-light">Dashboards /</span> Orders management</h4>
            </div>
            <!-- / Content -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->
  </body>

    
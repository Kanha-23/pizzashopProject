<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <nav class="nav navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebarMenu"
                aria-controls="sidebarMenu" aria-expanded="true" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div>
                <span class="nav-text">PizzaShop</span>
            </div>
            <div class="d-flex align-items-center">
                <div class="nav-profile dropdown">
                    <img src="images/Default_pfp.svg.png" alt="Dropdown" height="30px" width="30px" id="profileDropdown"
                        data-bs-toggle="dropdown" aria-expanded="false" style="cursor: pointer;">
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                        <li><span class="dropdown-item-text">Username</span></li>
                        <li><a class="dropdown-item" href="#myProfile">My Profile</a></li>
                        <li><a class="dropdown-item" href="#changePassword">Change Password</a></li>
                        <li><a class="dropdown-item text-danger" href="#logout">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
   
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/user.css">
   
    <title>User</title>
</head>

<body>
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



    <div class="holder d-flex">
        <!-- Sidebar -->
        <div class="offcanvas-lg offcanvas-start" id="sidebarMenu">
            <aside class="sidebar bg-light border-end vh-100" style="width: 250px;">
                <ul class="list-unstyled">
                    <div class="logo mb-4">
                        <img src="images/logos/pizzashop_logo.png" alt="" height="60px" width="70px">
                        <span>PIZZASHOP</span>
                    </div>
                    <li><a href="" class="d-flex align-items-center py-2 px-3 "><img src="images/icons/house-solid.svg"
                                alt="" class=" svgs me-2">Dashboard</a></li>
                    <li><a href="innerpage.html" class="d-flex align-items-center py-2 px-3 activeLinks"><img
                                src="images/icons/user-solid.svg" alt="" class="svgs me-2"> User</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img
                                src="images/icons/person-circle-check-solid.svg" alt="" class="svgs me-2"> Role and
                            Permission</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img src="images/icons/mug-hot-solid.svg"
                                alt="" class="svgs me-2"> Menu</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img
                                src="images/icons/money-check-dollar-solid.svg" alt="" class="svgs me-2"> Taxes and
                            Fees</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img src="images/icons/table-solid.svg"
                                alt="" class="svgs me-2">Tables and Sections</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img src="images/icons/list-solid.svg"
                                alt="" class="svgs me-2"> Order</a></li>
                    <li><a href="" class="d-flex align-items-center py-2 px-3"><img
                                src="images/icons/person-shelter-solid.svg" alt="" class="svgs me-2"> Customers</a></li>
                </ul>
            </aside>
        </div>

        <!-- Main Section -->
        <section class="section flex-grow-1 p-4">

            <div class="head-container mb-3">
                <div class="heading">
                    <h2>Users</h2>
                </div>
                <div class="row">
                    <div class="col-12 d-flex justify-content-start align-items-center">
                        <input type="text" placeholder="Search">

                        <button class="btn btn-primary me-2" type="submit">+Add</button>
                    </div>
                </div>
            </div>

            <div class="table-user table-responsive">

                <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Role</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">
                        <tr>
                            <td>xyz</td>
                            <td>xyz@gmail.com</td>
                            <td>1234567890</td>
                            <td>Chef</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td>
                                <div class="action-col">
                                    <a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px"
                                            alt=""></a>
                                    <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                            alt=""></a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>abc</td>
                            <td>abc@gmail.com</td>
                            <td>5462348719</td>
                            <td>Helper</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>abc</td>
                            <td>abc@gmail.com</td>
                            <td>5462348719</td>
                            <td>Helper</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>abc</td>
                            <td>abc@gmail.com</td>
                            <td>5462348719</td>
                            <td>Helper</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>xyz</td>
                            <td>xyz@gmail.com</td>
                            <td>1234567890</td>
                            <td>Chef</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>xyz</td>
                            <td>xyz@gmail.com</td>
                            <td>1234567890</td>
                            <td>Chef</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>xyz</td>
                            <td>xyz@gmail.com</td>
                            <td>1234567890</td>
                            <td>Chef</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href="" class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px"
                                        width="20px" alt=""></a>
                            </td>
                        </tr>
                        <tr>
                            <td>xyz</td>
                            <td>xyz@gmail.com</td>
                            <td>1234567890</td>
                            <td>Chef</td>
                            <td><button type="button" class="btn btn-success">Active</button></td>
                            <td><a href=""><img src="images/icons/pen-solid.svg" height="20px" width="20px" alt=""></a>
                                <a href=""  class="delete" data-bs-toggle="modal" data-bs-target="#deleteModal"><img src="images/icons/trash-solid.svg" height="20px" width="20px"
                                        alt=""></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
           
                <!-- Modal -->
                <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="deleteModalLabel">Delete Confirmation</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <img src="images/icons/warning-icon.svg" alt="" width="35px" height="35px"><br>
                                <span>Are you sure you want to delete this item?</span>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary yes-btn" data-bs-dismiss="modal">YES</button>
                                <button type="button" class="btn btn-danger no-btn">NO</button>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="pagination">
                    <button id="prev-btn" onclick="prevPage()">
                        < </button>
                            <button id="next-btn" onclick="nextPage()">></button>
                </div>
                <label for="rows-per-page">Rows per page:</label>
                <input type="number" id="rows-per-page" value="5" min="1" max="10" onchange="changeRowsPerPage()">

            </div>
        </section>
    </div>
    <script src="css/bootstrap.bundle.min.js"></script>
</body>

</html>

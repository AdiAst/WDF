<nav class="navbar navbar-expand-lg bg-light">
        <div class="container">
            <a class="navbar-brand" href="home">ABC Jobs</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="d-flex ms-auto" action="search-result" method="post"  role="search">
                    <input class="form-control me-2" type="search" name="search"  placeholder="Search" aria-label="Search">
                    <button class="btn btn-dark text-danger" type="submit">Search</button>
                </form>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="explore">Explore</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="profile">Profile</a>
                    </li>
                    <% if(session.getAttribute("user_login") != null){ %>
                    <li class="nav-item">
                        <a class="btn btn-outline-danger ms-4" href="logout">Sign Out</a>
                    </li>
                    <%} %>
                </ul>
            </div>
        </div>
    </nav>
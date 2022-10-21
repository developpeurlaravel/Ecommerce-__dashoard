
<nav class="navbar navbar-expand-lg navbar-danger bg-danger">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">E-Shop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ url('/') }}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('category') }}">Category</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ url('cart') }}">Cart</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/login">login</a>
                </li><li class="nav-item">
                    <a class="nav-link" href="/register">register</a>
                </li>
            </ul>
        </div>
    </div>
</nav>


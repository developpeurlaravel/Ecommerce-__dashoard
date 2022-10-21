<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

 <!--     Fonts and icons     -->
 <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">


  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />


    <link href="{{ asset('admin/css/custom.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/material-dashboard.css') }}" rel="stylesheet">

</head>
<body>

    <div class="wrapper ">
{{-- ato atsona ilay sidebar de mieriter ato koa --}}
            @include('layouts.inc.sidebar')
            <div class="main-panel">
                @include('layouts.inc.adminnav')
                <div class="content">
{{-- ato mere content atsy am index blade lasa anaty card leiz automatquement --}}

                    @yield('content')
                </div>
                @include('layouts.inc.adminfooter')

            </div>
    </div>



 <!-- Scripts -->
 <script src="{{ asset('admin/js/js/jquery.min.js') }}" defer></script>
 <script src="{{ asset('admin/js/popper.min.js') }}" defer></script>
 <script src="{{ asset('admin/js/bootstrap-material-design.min.js') }}" defer></script>
 <script src="{{ asset('admin/js/perfect-scrollbar.jquery.min.js') }}" defer></script>

{{-- swit alert less e --}}
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 @if(session('status'))
     <script>
         swal(" {{ session('status') }}");
     </script>
 @endif

@yield('scripts')
</body>
</html>

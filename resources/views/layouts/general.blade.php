@if(request()->ajax())
    @yield("contenu")
    @else
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset='UTF-8'>
            <meta name="csrf-token" content="{{ csrf_token() }}">
            <link rel="stylesheet" href="/css/style.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">    <title>Mon application soundcloud</title>
            <link href="https://fonts.googleapis.com/css?family=Mukta&display=swap" rel="stylesheet">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>

            
            @auth
           
           <div class="flex">
               <div class="logo-home"></div>
                    <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" role="button" data-pjax>
                        <div class="logout">Deco</div>
                    </a>
            </div>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;" data-pjax>
                        @csrf
                    </form>
                
             <div id="main">
                <div class="home-bck"></div>
                 <div class="quote">L'optimisme est une forme supérieure de l'égoïsme.</div>
                 
                 <!-- CALENDRIER -->
                 <div id="calender">
		<!-- h1 'off-color' class was removed -->
		<table>
			<thead class="color">
				<tr>
					<th colspan="7" class="border-color">
						<h4 id="cal-year" contenteditable="true">2018</h4>
						<div>
							<i class="fas fa-caret-left icon"> </i>
							<h3 id="cal-month">july</h3>
							<i class="fas fa-caret-right icon"> </i>
						</div>
					</th>
				</tr>

				<tr>
					<th class="weekday border-color">Sun</th>
					<th class="weekday border-color">Mon</th>
					<th class="weekday border-color">Tue</th>
					<th class="weekday border-color">Wed</th>
					<th class="weekday border-color">Thu</th>
					<th class="weekday border-color">Fri</th>
					<th class="weekday border-color">Sat</th>
				</tr>
			</thead>

			<tbody id="table-body">
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td class="tooltip-container">
						<span class="day">1</span>
						<img src="./images/note1.png" alt="note" />
						<span class="tooltip"> this is pretty tooltip</span>
					</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
				</tr>
			</tbody>
		</table>
	</div>


                 
                 <!-- FIN CALENDRIER -->
                 <div class="menu">
                 <div class="home"></div>
                 <div class="settings"></div>
                 </div>
            </div>
            @endauth
           

           

            


            <script src="/js/jquery.js"></script>
            <script src="/js/jquery.pjax.js"></script>
            <script src="/js/divers.js"></script>
        </body>
    </html>
    @endif


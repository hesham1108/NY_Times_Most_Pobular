# NY_Times_Most_Pobular
a simple app to hit the NY Times Most Popular Articles API and show a list of articles, that shows details when items on the list are tapped
# the tech used on the app:
- flutter
- dart
- cubit
- Provider(change Notifier)
- MVC (design pattern)
- http (REST APIs)
- AnimatedSize
- Custom Clipper
- Custom Painter
- Network Image

# describing the flow of the Project:
- when the user opening the app a function that getting articles from api will be called.
- this function is called from Articles Cubit which will emit three states for getting the articles:
    - the loading state while articles loading from the server.
    - the success state when the articles loaded successfully.
    - the failure state when something went wrong.
- and there is a different widget displayed for each state.
- when everything worked well:
    - the all articles view will displayed in the screen with some components:
        - the AppBar with Drawer Icon as leading icon and (search and menu)icons as actions.
        - a list of artiles tiles every tile displaying a minimal info of a single article.
        - when tapping on a tile it will navigate to a single article view page which take the current article as as argument.

# App Screen Shots:
- Articles loading:
  
<a target="blank"><img align="center" src="https://github.com/hesham1108/NY_Times_Most_Pobular/blob/main/app_screen_shots/while_loading.jpg" height="500" width="350" /></a>

- All Articles view:
   
<a target="blank"><img align="center" src="https://github.com/hesham1108/NY_Times_Most_Pobular/blob/main/app_screen_shots/all_articles_view.jpg" height="500" width="350" /></a>

- Single Articles View:
  
<a target="blank"><img align="center" src="https://github.com/hesham1108/NY_Times_Most_Pobular/blob/main/app_screen_shots/single_article_view.jpg" height="500" width="350" /></a>

- Articles search bar:
    
<a target="blank"><img align="center" src="https://github.com/hesham1108/NY_Times_Most_Pobular/blob/main/app_screen_shots/search_bar.jpg" height="500" width="350" /></a>

- Articles Custom Drawer:
   
<a target="blank"><img align="center" src="https://github.com/hesham1108/NY_Times_Most_Pobular/blob/main/app_screen_shots/custom_drawer.jpg" height="500" width="350" /></a>



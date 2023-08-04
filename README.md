# NY_Times_Most_Pobular
a simple app to hit the NY Times Most Popular Articles API and show a list of articles, that shows details when items on the list are tapped
## the tech used on the app:
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

## describing the flow of the Project:
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

  

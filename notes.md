````
<h1><%= @greeting %>, friend!</h1>
<% else %>
  <h1>Hello, friend!</h1>
<% end %>
````

<%= evaluates Ruby code and passes the value of the expression through the browser (displays it). Whereas <% evaluates Ruby code but supresses the value of the expression from the browser (does not display value).

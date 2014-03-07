<h1>Rails User Database Setup</h1>

An easy way start a new Rails 4.0 web application with a Users database
and a fully functional Users model, controller, and resources!<br />
Database in use: <b>SQLite</b>

Creates a Users database table with:
<blockquote>
	name:string<br />
	email:string, unique: true (email must be unique)<br />
	password_digest:string (should save as the encrypted password)<br />
	remember_token:string (used for sessions)<br />
	admin:boolean (either you are an admin or not)<br />
</blockquote>

<h2>How to use</h2>
1) Clone repository to a new directory.<br />

2) Change original application name 'UserDBSetup' to your own Rails application name
in the following files:<br />
<b>Note:</b> <i>This step is optional if you really want to keep your application name as 'UserDBSetup', which I'm' pretty sure you don't :D</i><br />
<blockquote>
	./config/application.rb<br />
	./config/environment.rb<br />
	./config/environments/production.rb<br />
	./config/environments/test.rb<br />
	./config/environments/development.rb<br />
	./config/initializers/session_store.rb<br />
	./config/initializers/secret_token.rb<br />
	./config/routes.rb<br />
	./app/views/layouts/application.html.erb<br />
	./Rakefile<br />
</blockquote>

3) Migrate the already created User table migration with:
<blockquote>
	rake db:migrate
</blockquote>

And... that is all! Open up your Rails server and enjoy!

<h2>Example pages</h2>
I included example pages to see how it works using the Users resources for User
signup, signin, and the root path where it displays all Users created.
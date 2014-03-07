Rails User Database Setup
=========================

<b>An easy setup for a users database table on Rails 4.0 with SQLite for web applications.</b>

<b>Creates a Users database table with:</b>
<div style="padding-left: 40px">
	name:string<br />
	email:string, unique: true (email must be unique)<br />
	password_digest:string (should save as the encrypted password)<br />
	remember_token:string (used for sessions)<br />
	admin:boolean (either you are an admin or not)<br />
</div>
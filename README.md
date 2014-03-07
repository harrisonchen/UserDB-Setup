Rails User Database Setup
=========================

An easy setup for a users database table on Rails 4.0 with SQLite.

Creates a Users database table with:
name:string
email:string, unique: true (email must be unique)
password_digest:string (should save as the encrypted password)
remember_token:string (used for sessions)
admin:boolean (either you are an admin or not)
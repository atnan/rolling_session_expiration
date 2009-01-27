Rolling session expiry
======================

This plugin allows you to set the expiry date of your sessions to the time of
the last request + an arbitary period of time. For example, to configure your
application to keep sessions valid for 30 days after each request made by the
owner of that session, you would drop the following into an initializer:

    CGI::Session.session_expiration_period = 1.month

Copyright (c) 2008 Nathan de Vries, released under the MIT license

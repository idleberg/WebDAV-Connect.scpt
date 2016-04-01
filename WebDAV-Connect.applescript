#! /usr/bin/osascript

(*  
    The MIT License (MIT)

    Copyright (c) 2013 Jan T. Sott

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
*)


-- Settings
property davPath : "" -- e.g. https://your.server/path
property davUser : ""


-- Do not edit the lines below unless you know what you're doing!
if length of davPath is less than 8 then
    display dialog "No valid server property specified in script" with icon caution buttons "OK"
    error number -128
end if

if length of davUser is 0 then
    display dialog "No user property specified in script" with icon caution buttons "OK"
    error number -128
end if

try
    set windowDialog to "Please enter the password for " & davUser
    set davPassword to display dialog ¬
        windowDialog with title ¬
        "Password" default answer ¬
        "" buttons {"Cancel", "OK"} default button 2 ¬
        with hidden answer
    if length of (text returned of davPassword) is not 0 then
        mount volume davPath as user name davUser with password (text returned of davPassword)
    end if
end try

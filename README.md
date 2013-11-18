# WebDAV Connect

Admittedly, most people will have little or no use for this AppleScript, as Mac OS X already has the necessary means to connect to a WebDAV server ("Connect to server" or `⌘K`). I wrote this script, as I was looking for a more discreet way to connect to a WebDAV server on a computer that's occasionally shared with co-workers. Server address and user name are hard-coded and the only dialog you will see is the one asking for your password.

Note: While you can save this script as a native app, it can at all times opened using the AppleScript Editor, hence the server address and user name are not “protected” from prying eyes. However, there's no way of saving the password—by accident or not—in your keychain.

## Usage

1. Download `WebDAV-Connect.scpt`
2. Edit server settings in an editor of your choice
3. Use the AppleScript Editor to save the script as `.app`
4. Execute your app

## License

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
#basic file movement

0 = go to the start of a line
$ = go to the end of the line

e = move to the next word
b= move to the previous word

$ = go to end of the line
0 = go to start of the line

G  = move to bottom of the file
gg = move to top of the file

H = go to highest point of the text seen on screen
M = go to the middle of the text seen on screen
L = go to the lowest point of the text seen on screen

Ctrl U = Up
Ctrl D = Down

Ctrl f = go one page in the document forward
Ctrl b = go one page backward

dw = delete word under cursor (from where ure at with the cursor)
daw= deletes the word no matter where u are with ur cursor

2dd = delete the next 2 lines (any numer works)

2dw = delete next 2 words

d$ = delete to end of the line
dd = delete to the end of the line

x  = delete under cursor

C = deletes the line and puts me in insert mode

r = lets me change letter under the cursor

R = lets me change more than one letter (Replace mode)


CI< = changes everything inside <>  ( CI( changes everything between () )



u = undo last command

U = Redo

. = repeat last command

#Insert mode

A = add text at the end of the line
a = add text right side to the cursor

I = add text to the start of a line
i = add text to the left of the cursor

O = open a line above the cursor
o = open a line below the cursor

C = deletes a character and puts me in insert mode
c = needs a motion (cw will delete the word and put me in insert mode.

s = deletes a character and lets me add more
R = deletes a character and changes the following characters


#copy and paste

select text you want to copy:

        y to yank (copy the highlighted text)

        p to paste the highlighted text

p = paste previously deleted/ selected text
y = yank selected text

<leader>y = yank to clipboard
<leader>p = paste from clipboard

Ctrl V = paste from clipboard

:r - "Filename" will insert the files content into the current file


#search and replace

r = replace character und cursor

R = replace more than one character

:4,7/two/three/g (replaces every "two" in lines 4 to 7 with "three")

:%/two/three/g (replaces every "two" in the whole document with "three")

.4,7/two/three/gi (to change everything case insensitiv (TWo twO tWo will also be changed ))

/ (searchword) <enter> = search (press n to get to the next found entry | press N to go to the previous found entry)

CTRL O to go back to the place where u started your search


% = search matching parentheses [ } (   (go above a parenthesis and press % and it shows u the matching parenthesis

:set ic = ignore case sensetivity

:set noic = disable ignore case sensetivity


#colors

<leader> ch = add colorbackground in the value of a hex color

<Alt> c = open Colorpicker

:VCase to change colorpicker output from uppercase to lowercase


#file browsing

<Ctrl -n> = toggle Nerdtree

<leader> fzf = open fzf search

<leader> -m = open MRU

:!rm <filename> = removes the file

:edit
:e
/filename

% = create new file
d = new dir
R = rename
D = delete


#buffers

:ls = list open buffers

<leader> n = switch to next buffer

<leader> b = switch to previous buffer

<leader> cb = close buffer ure on right now


#help

:help to open help window

:help cmd to find help with cmd

:! <command> (for example :! ls to list all files in the current directory)


#custom shortcuts

jj = esc if not in normal

gc (after selecting text = Comment everything out
shortcuts

<leader> vim = open vimrc

<leader> z = open zshrc

<leader> sv = source vimrc file

Ctrl -n = toggle Nerdtree

Ctrl -c = copy to system clipboard

Ctrl -s =safe

Ctrl -q = safe and quit

<leader> q = :q!

<leader> fzf = open fuzzy file search

<leader> sc = spellcheck

<leader> m = open most recent files

<leader> n = switch to next buffer

<leader> b = switch to previous buf

<leader>vs = split window to open new file in new pane

Ctrl -hjkl = move around in open windows

#Key	Action	Followed by
a	enter insertion mode after current character	text, ESC
b	back word
c	change command	cursor motion command
d	delete command	cursor motion command
e	end of word
f	find character after cursor in current line	character to find
g	UNBOUND
h	move left one character
i	enter insertion mode before current character	text, ESC
j	move down one line
k	move up one line
l	move right one character
m	mark current line and position	mark character tag (a-z)
n	repeat last search
o	open line below and enter insertion mode	text, ESC
p	put buffer after cursor
q	UNBOUND
r	replace single character at cursor	replacement character expected
s	substitute single character with new text	text, ESC
t	same as "f" but cursor moves to just before found character	character to find
u	undo
v	UNBOUND
w	move foreward one word
x	delete single character
y	yank command	cursor motion command
z	position current line	CR = top; "." = center; "-"=bottom
A	enter insertion mode after end of line	text, ESC
B	move back one Word
C	change to end of line	text, ESC
D	delete to end of line
E	move to end of Word
F	backwards version of "f"	character to find
G	goto line number prefixed, or goto end if none
H	home cursor - goto first line on screen
I	enter insertion mode before first non-whitespace character	text, ESC
J	join current line with next line
K	UNBOUND
L	goto last line on screen
M	goto middle line on screen
N	repeat last search, but in opposite direction of original search
O	open line above and enter insertion mode	text, ESC
P	put buffer before cursor
Q	leave visual mode (go into "ex" mode)
R	replace mode - replaces through end of current line, then inserts	text, ESC
S	substitute entire line - deletes line, enters insertion mode	text, ESC
T	backwards version of "t"	character to find
U	restores line to state when cursor was moved into it
V	UNBOUND
W	foreward Word
X	delete backwards single character
Y	yank entire line
Z	first half of quick save-and-exit	"Z"
0	move to column zero
1-9	numeric precursor to other commands	[additional numbers (0-9)] command
 	(SPACE) move right one character
!	shell command filter	cursor motion command, shell command
@	vi eval	buffer name (a-z)
#	UNBOUND
$	move to end of line
%	match nearest [],(),{} on line, to its match (same line or others)
^	move to first non-whitespace character of line
&	repeat last ex substitution (":s ...") not including modifiers
*	UNBOUND
(	move to previous sentence
)	move to next sentence
\	UNBOUND
|	move to column zero
-	move to first non-whitespace of previous line
_	similar to "^" but uses numeric prefix oddly
=	UNBOUND
+	move to first non-whitespace of next line
[	move to previous "{...}" section	"["
]	move to next "{...}" section	"]"
{	move to previous blank-line separated section	"{"
}	move to next blank-line separated section	"}"
;	repeat last "f", "F", "t", or "T" command
'	move to marked line, first non-whitespace	character tag (a-z)
`	move to marked line, memorized column	character tag (a-z)
:	ex-submode	ex command
"	access numbered buffer; load or access lettered buffer	1-9,a-z
~	reverse case of current character and move cursor forward
,	reverse direction of last "f", "F", "t", or "T" command
.	repeat last text-changing command
/	search forward	search string, ESC or CR
<	unindent command	cursor motion command
>	indent command	cursor motion command
?	search backward	search string, ESC or CR
^A	UNBOUND
^B	back (up) one screen
^C	UNBOUND
^D	down half screen
^E	scroll text up (cursor doesn't move unless it has to)
^F	foreward (down) one screen
^G	show status
^H	backspace
^I	(TAB) UNBOUND
^J	line down
^K	UNBOUND
^L	refresh screen
^M	(CR) move to first non-whitespace of next line
^N	move down one line
^O	UNBOUND
^P	move up one line
^Q	XON
^R	does nothing (variants: redraw; multiple-redo)
^S	XOFF
^T	go to the file/code you were editing before the last tag jump
^U	up half screen
^V	UNBOUND
^W	UNBOUND
^X	UNBOUND
^Y	scroll text down (cursor doesn't move unless it has to)
^Z	suspend program
^[	(ESC) cancel started command; otherwise UNBOUND
^\	leave visual mode (go into "ex" mode)
^]	use word at cursor to lookup function in tags file, edit that file/code
^^	switch file buffers
^_	UNBOUND
^?	(DELETE) UNBOUND





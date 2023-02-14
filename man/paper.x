[NAME]
paper - print paper size information

[>DESCRIPTION]
.PP
.B paper
prints information about the given paper sizes, which can include the
standard form of its name, its width and height. The output is designed
to be both human- and machine-readable.
The name is matched case-insensitively, and ignoring spaces.
.PP
If neither a paper size nor the \fB\-\-all\fR option is given, the current
paper size is used.
.PP
The current paper size is obtained by looking in order at the following
values until a non-empty value is found.
If no paper size is configured, paper exits with an error.
.IP \[bu]
The \fBPAPERSIZE\fR environment variable
.IP \[bu]
The user's default paper size in
.B $XDG_CONFIG_HOME/papersize
.IP \[bu]
The current locale's default paper size (if supported by the system)
.IP \[bu]
The system default paper size in
.B @sysconfdir@/papersize
.IP \[bu]
The first paper size in the system list
.IP \[bu]
The first paper size in the user's list

[FILES]
.TP
.B @sysconfdir@/papersize
System default paper size.
.TP
.B $XDG_CONFIG_HOME/papersize
User's default paper size.

[ENVIRONMENT VARIABLES]
.TP
.B PAPERSIZE
Paper size to use.

[AUTHOR]
Written by Reuben Thomas.

[SEE ALSO]
.BR paperspecs (5)

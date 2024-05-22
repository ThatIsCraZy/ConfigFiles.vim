" Vim syntax file
" Language: fileTypeConfig

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_


syn keyword configFileCond       if else for-each
syn keyword configFileCond       to-zone from-zone match then from to match

syn keyword configFileLabel      system chassis firewall security rule rule-set pool

syn keyword configFileKeyword    filter term routing-instances routing-engine line-card next-hop
syn keyword configFileKeyword    cluster vrrp-group security-zone encapsulation storm-control
syn keyword configFileKeyword    alg log login node zone path community
syn match   configFileKeyword    /interfaces\?/
syn match   configFileKeyword    /vlans\?/
syn match   configFileKeyword    /members\?/
syn match   configFileKeyword    /applications\?/

syn keyword configFileProtocol   ip ipv6 inet inet6 tcp udp
syn keyword configFileProtocol   snmp snmptrap ntp syslog ssh ftp ftp-data dns sql spanning-tree
syn match   configFileProtocol   /https\?/


syn match   configFileInterface   /\smlag\-[\-a-z]\+/

syn match   configFileIpv4    /\smlag\-[\-a-z]\+/

syn keyword configFileState  prefer active passive on
syn keyword configFileAction     shutdown force


syn keyword configFile2ndParameter  switchport 
syn match configFile2ndParameter   / lacp-individual /
syn keyword configFile2ndParameter  speed ipl dcb
syn match   configFile2ndParameter  /\([0-9]\)\@<= spanning-tree/

syn match   configFileComment    / name /

syn match   configFileComment    /description/



syn keyword configFileConfigure  set delete rename insert request show
syn keyword configFilePortType  trunk access static track standby hybrid fast edge
syn keyword configFileConfigure  link-mode port-mode  queue
syn match   configFileConfigure  /\s\d\+[gm]/

syn keyword configFileFunction   primary secondary neighbor

syn region  configFileComment    contained start='/*' end='*/'

syn match   configFileString     /\"[^"]*\"/

syn keyword configFileVar        low high all

syn keyword configFileInterface  ethernet
syn match   configFileIpv4  /\v(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?) ?((\/(3[0-2]|[12][0-9]|[1-9]))(\n| ))?/ 

" syn match   configFileIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/


syn match   configFileVar           /\(=\)\@<=.*/

hi link configFileKeyword        Statement
hi link configFileIpv4           Type
hi link configFilePortType           NotifyTRACEIcon
hi link configFileProtocol       Type
hi link configFileAction         Error
hi link configFileInterface      Function
hi link configFileFunction       Function
hi link configFileConfigure      Function
hi link configFileLabel          Identifier
hi link configFileCond           Type
hi link configFileComment        Comment
hi link configFileString         String
hi link configFileVar            String
hi link configFileDef            String
hi link configFileState          Boolean
hi link configFile2ndParameter   DiagnosticInfo
hi link configFileCommandRefine   DiagnosticHint



let b:current_syntax = "fileTypeConfig"

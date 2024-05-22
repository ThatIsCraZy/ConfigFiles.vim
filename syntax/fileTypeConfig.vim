" Vim syntax file
" Language: configFile
" Maintainer: Makoto Momota <makoto.momota@gmail.com>

if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-
setlocal iskeyword+=_

syn match   configFileDef        /\s\u\S\+/

syn keyword configFileCond       if else for-each
syn keyword configFileCond       to-zone from-zone match then from to match

syn keyword configFileLabel      system chassis firewall security rule rule-set pool

syn keyword configFileKeyword    version server class user address route nat policy vlan-id mtu
syn keyword configFileKeyword    filter term routing-instances routing-engine line-card next-hop
syn keyword configFileKeyword    cluster vrrp-group security-zone encapsulation storm-control
syn keyword configFileKeyword    alg log login node zone path community
syn match   configFileKeyword    /interfaces\?/
syn match   configFileKeyword    /vlans\?/
syn match   configFileKeyword    /members\?/
syn match   configFileKeyword    /applications\?/

syn keyword configFileProtocol   ip ipv6 inet inet6 tcp udp
syn keyword configFileProtocol   snmp snmptrap ntp syslog ssh ftp ftp-data dns sql spanning-tree
syn match   configFileProtocol   /[ie]\?bgp/
syn match   configFileProtocol   /https\?/
syn match   configFileProtocol   /\s802\.3ad\s/
syn match   configFileProtocol   /\s802\.1Q\s/

" configFile mlag like follows:
"  mlag-vig mlag-port-channel
syn match   configFileInterface   /\smlag\-[\-a-z]\+/

syn keyword configFileState     any deny permit accept reject discard disable enable no 
syn keyword configFileState  prefer active passive on
syn keyword configFileAction     shutdown force


syn keyword configFile2ndParameter  switchport 
syn match configFile2ndParameter   / lacp-individual /
syn keyword configFile2ndParameter  speed ipl dcb
syn match   configFile2ndParameter  /\([0-9]\)\@<= spanning-tree/

syn match   configFileComment    / name /
syn match   configFileVar           /\(=\)\@<=.*/

syn match   configFileComment    /description/
syn match   configFileVar           /\(description\)\@<=.*/


syn keyword configFileCommandRefine   mode allowed-vlan rate peer-address except add priority-flow-control routing snooping
syn keyword configFileProtocol mlag mlag-vip clock lacp
syn match   configFileCommandRefine  /port type/

syn keyword configFileConfigure  set delete rename insert request show
syn keyword configFilePortType  trunk access static track standby hybrid fast edge
syn keyword configFileConfigure  link-mode port-mode  queue
syn match   configFileConfigure  /\s\d\+[gm]/

syn keyword configFileFunction   primary secondary neighbor
syn match   configFileFunction   /unit\s[0-9]\+/
syn match   configFileFunction   /vlan\.[0-9]\+/
syn match   configFileFunction   /node[0-9]\+/

syn region  configFileComment    contained start='/*' end='*/'

syn match   configFileString     /\"[^"]*\"/

syn keyword configFileVar        low high all
syn match   configFileVar        /\d\+/

syn keyword configFileInterface  ethernet timezone system-mac port-channel

" IPv4
syn match   configFileIpv4       /\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\(\.\(25[0-5]\|2[0-4]\d\|[01]\?\d\{1,2}\)\)\{3}\(\/[0-9]\{1,2\}\)\?/


hi link configFileKeyword        Statement
hi link configFileIpv4           NotifyTRACEIcon
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



let b:current_syntax = "configFile"

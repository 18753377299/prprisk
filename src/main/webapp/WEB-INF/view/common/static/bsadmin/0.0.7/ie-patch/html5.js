
(function(n,f){function p(){var a=e.elements;return"string"==typeof a?a.split(" "):a}function k(a){var b=q[a[r]];b||(b={},h++,a[r]=h,q[h]=b);return b}function s(a,b,c){b||(b=f);if(g)return b.createElement(a);c||(c=k(b));b=c.cache[a]?c.cache[a].cloneNode():u.test(a)?(c.cache[a]=c.createElem(a)).cloneNode():c.createElem(a);return b.canHaveChildren&&!v.test(a)?c.frag.appendChild(b):b}function w(a,b){b.cache||(b.cache={},b.createElem=a.createElement,b.createFrag=a.createDocumentFragment,b.frag=b.createFrag());
a.createElement=function(c){return!e.shivMethods?b.createElem(c):s(c,a,b)};a.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+p().join().replace(/\w+/g,function(a){b.createElem(a);b.frag.createElement(a);return'c("'+a+'")'})+");return n}")(e,b.frag)}function t(a){a||(a=f);var b=k(a);if(e.shivCSS&&!l&&!b.hasCSS){var c,d=a;c=d.createElement("p");d=d.getElementsByTagName("head")[0]||d.documentElement;c.innerHTML="x<style>article,aside,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}</style>";
c=d.insertBefore(c.lastChild,d.firstChild);b.hasCSS=!!c}g||w(a,b);return a}var m=n.html5||{},v=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,u=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,l,r="_html5shiv",h=0,q={},g;(function(){try{var a=f.createElement("a");a.innerHTML="<xyz></xyz>";l="hidden"in a;var b;if(!(b=1==a.childNodes.length)){f.createElement("a");var c=f.createDocumentFragment();b="undefined"==typeof c.cloneNode||
"undefined"==typeof c.createDocumentFragment||"undefined"==typeof c.createElement}g=b}catch(d){g=l=!0}})();var e={elements:m.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup main mark meter nav output progress section summary time video",version:"3.6.2pre",shivCSS:!1!==m.shivCSS,supportsUnknownElements:g,shivMethods:!1!==m.shivMethods,type:"default",shivDocument:t,createElement:s,createDocumentFragment:function(a,b){a||(a=f);if(g)return a.createDocumentFragment();
b=b||k(a);for(var c=b.frag.cloneNode(),d=0,e=p(),h=e.length;d<h;d++)c.createElement(e[d]);return c}};n.html5=e;t(f)})(this,document);

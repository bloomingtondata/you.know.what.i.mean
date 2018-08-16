<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script>
        <title>
      Open Data Commons Public Domain Dedication and License (PDDL) | Open Data Commons          </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <meta name="description" content="Legal tools for Open Data" />
            
      <link rel="pingback" href="https://opendatacommons.org/xmlrpc.php" />

          <script>
      var okiConsent = {
        analyticsTrackingID: ''
      };
    </script>
    <link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//opendatacommons.core.okfn.org' />
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//a.okfn.org' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="Open Data Commons &raquo; Feed" href="https://opendatacommons.org/feed/" />
<link rel="alternate" type="application/rss+xml" title="Open Data Commons &raquo; Comments Feed" href="https://opendatacommons.org/comments/feed/" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.4\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.4\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/opendatacommons.org\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.9.7"}};
			!function(a,b,c){function d(a,b){var c=String.fromCharCode;l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,a),0,0);var d=k.toDataURL();l.clearRect(0,0,k.width,k.height),l.fillText(c.apply(this,b),0,0);var e=k.toDataURL();return d===e}function e(a){var b;if(!l||!l.fillText)return!1;switch(l.textBaseline="top",l.font="600 32px Arial",a){case"flag":return!(b=d([55356,56826,55356,56819],[55356,56826,8203,55356,56819]))&&(b=d([55356,57332,56128,56423,56128,56418,56128,56421,56128,56430,56128,56423,56128,56447],[55356,57332,8203,56128,56423,8203,56128,56418,8203,56128,56421,8203,56128,56430,8203,56128,56423,8203,56128,56447]),!b);case"emoji":return b=d([55357,56692,8205,9792,65039],[55357,56692,8203,9792,65039]),!b}return!1}function f(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var g,h,i,j,k=b.createElement("canvas"),l=k.getContext&&k.getContext("2d");for(j=Array("flag","emoji"),c.supports={everything:!0,everythingExceptFlag:!0},i=0;i<j.length;i++)c.supports[j[i]]=e(j[i]),c.supports.everything=c.supports.everything&&c.supports[j[i]],"flag"!==j[i]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[j[i]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(h=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",h,!1),a.addEventListener("load",h,!1)):(a.attachEvent("onload",h),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),g=c.source||{},g.concatemoji?f(g.concatemoji):g.wpemoji&&g.twemoji&&(f(g.twemoji),f(g.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='okf-panel-master-frontend-css'  href='https://opendatacommons.core.okfn.org/wp-content/plugins/okf-panel-master/assets/css/frontend.css' type='text/css' media='all' />
<link rel='stylesheet' id='okf-wordpress-footer-frontend-css'  href='https://opendatacommons.core.okfn.org/wp-content/plugins/okf-wordpress-footer/assets/css/frontend.css' type='text/css' media='all' />
<link rel='stylesheet' id='bcct_style-css'  href='https://opendatacommons.org/wp-content/plugins/better-click-to-tweet/assets/css/styles.css?ver=3.0' type='text/css' media='all' />
<link rel='stylesheet' id='toc-screen-css'  href='https://opendatacommons.org/wp-content/plugins/table-of-contents-plus/screen.min.css?ver=1509' type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css'  href='https://opendatacommons.org/wp-includes/css/dashicons.min.css?ver=4.9.7' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack-widget-social-icons-styles-css'  href='https://opendatacommons.org/wp-content/plugins/jetpack/modules/widgets/social-icons/social-icons.css?ver=20170506' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='https://opendatacommons.org/wp-content/plugins/jetpack/css/jetpack.css?ver=6.3.2' type='text/css' media='all' />
<script type='text/javascript' src='//code.jquery.com/jquery-1.7.2.min.js?ver=4.9.7'></script>
<script type='text/javascript' src='https://opendatacommons.core.okfn.org/wp-content/plugins/okf-wordpress-footer/assets/js/frontend.js'></script>
<script type='text/javascript' src='https://a.okfn.org/html/oki/consent/assets/js/consent.js?ver=4.9.7'></script>
<script type='text/javascript' src='https://opendatacommons.core.okfn.org/wp-content/plugins/buddypress/bp-core/js/jquery-query.min.js?ver=2.9.4'></script>
<script type='text/javascript' src='https://opendatacommons.core.okfn.org/wp-content/plugins/buddypress/bp-core/js/vendor/jquery-cookie.min.js?ver=2.9.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var BP_DTheme = {"my_favs":"My Favorites","accepted":"Accepted","rejected":"Rejected","show_all_comments":"Show all comments for this thread","show_x_comments":"Show all %d comments","show_all":"Show all","comments":"comments","close":"Close","view":"View","mark_as_fav":"Favorite","remove_fav":"Remove Favorite","unsaved_changes":"Your profile has unsaved changes. If you leave the page, the changes will be lost."};
/* ]]> */
</script>
<script type='text/javascript' src='https://opendatacommons.org/wp-content/themes/bp-default/_inc/global.js?ver=2.9.4'></script>
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://opendatacommons.org/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://opendatacommons.org/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.9.7" />
<link rel="canonical" href="https://opendatacommons.org/licenses/pddl/" />
<link rel='shortlink' href='https://wp.me/P7MpJV-1k' />
<link rel="alternate" type="application/json+oembed" href="https://opendatacommons.org/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fopendatacommons.org%2Flicenses%2Fpddl%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://opendatacommons.org/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fopendatacommons.org%2Flicenses%2Fpddl%2F&#038;format=xml" />

	<script type="text/javascript">var ajaxurl = 'https://opendatacommons.org/wp-admin/admin-ajax.php';</script>

<script src='https://core.okfn.org/?dm=0d96c7960d4d2d023310d05481cd6a06&amp;action=load&amp;blogid=40&amp;siteid=1&amp;t=1968168018&amp;back=https%3A%2F%2Fopendatacommons.org%2Flicenses%2Fpddl%2F' type='text/javascript'></script>
<link rel='dns-prefetch' href='//v0.wordpress.com'/>
<style type='text/css'>img#wpstats{display:none}</style>
	<style type="text/css">
		
				#header h1 a, #desc { color:#FFFFFF; }
			</style>


<!-- Jetpack Open Graph Tags -->
<meta property="og:type" content="article" />
<meta property="og:title" content="Open Data Commons Public Domain Dedication and License (PDDL)" />
<meta property="og:url" content="https://opendatacommons.org/licenses/pddl/" />
<meta property="og:description" content="The PDDL places the data(base) in the public domain (waiving all rights): Plain language summary of the PDDL (with graphics!) Full legal text of the Public Domain Dedication and License v1.0 NB: Wh…" />
<meta property="article:published_time" content="2009-02-17T16:31:23+00:00" />
<meta property="article:modified_time" content="2016-07-06T14:44:23+00:00" />
<meta property="og:site_name" content="Open Data Commons" />
<meta property="og:image" content="https://s0.wp.com/i/blank.jpg" />
<meta property="og:locale" content="en_US" />
<meta name="twitter:text:title" content="Open Data Commons Public Domain Dedication and License (PDDL)" />
<meta name="twitter:card" content="summary" />

<!-- End Jetpack Open Graph Tags -->

      <!-- Theme Settings -->
      
      <style type="text/css">
          @media (min-width: 980px) {
            .navbar{
              max-height: 65px;
            }
            .navbar .brand {
              line-height: 65px;
            }
            .navbar .brand img {
              margin-top:15px;
              height:35px;
            }
            .navbar .nav > li > a {
              padding-top:24px;
              padding-bottom:22px;
            }
            .navbar .sub-brand {
              line-height:60px;
              padding-top:5px;
            }
            .header-text {
              margin-top:15px;
            }
            .navbar .navbar-inner .social-links,
            .navbar .navbar-inner .header-search {
              margin-top:22px;
            }
          }
          #wpadminbar {display:none; }
          html {margin-top: 0px !important;}
      </style>

            <link rel="shortcut icon" href="//assets.okfn.org/p/okfn/img/favicon.ico" />

      <script type="text/javascript">
        var Okfn = Okfn || {};
        // Make this variable available to Javascript
        Okfn.theme_directory = 'https://opendatacommons.org/wp-content/themes/wordpress-theme-okfn';
      </script>

      <!--[if lt IE 9]>
        <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <![endif]-->

      
  </head>

  <body class="bp-legacy page-template-default page page-id-82 page-parent page-child parent-pageid-56 no-js" id="bp-default">
    <script type="text/javascript">//<![CDATA[
(function(){var c=document.body.className;c=c.replace(/no-js/,'js');document.body.className=c;})();
//]]></script>
    
          <div id="okf-panel" class="collapse"><iframe src="//assets.okfn.org/themes/okfn/okf-panel.html" scrolling="no"></iframe></div>            <header>
      <div class="navbar">
        <div class="navbar-inner">
          <div class="container">

                          <div class="okfn-ribbon"><a href="http://okfn.org/" data-toggle="collapse" data-target="#okf-panel" title="Part of the Open Knowledge Foundation Network">An Open Knowledge Foundation Site</a></div>            
                                    <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar collapsed">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </a>
            <a title="Home"
               class="brand"
               href="https://opendatacommons.org">

                              <img src="//assets.okfn.org/web/images/header-logox2.png" alt="logo"/>
              
                              Open Data Commons                          </a>

                          <span class="sub-brand">
                Legal tools for Open Data              </span>
            
            <nav class="nav-collapse collapse">
                                          <ul id="nav" class="nav"><li id="menu-item-402" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-402"><a href="/">Home</a></li> <li id="menu-item-398" class="menu-item menu-item-type-post_type menu-item-object-page current-page-ancestor current-menu-ancestor current-menu-parent current-page-parent current_page_parent current_page_ancestor menu-item-has-children menu-item-398 dropdown" data-dropdown="dropdown"><a href="https://opendatacommons.org/licenses/" class=" dropdown-toggle">Licenses</a> <ul class="sub-menu dropdown-menu"> 	<li id="menu-item-413" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-413"><a href="https://opendatacommons.org/licenses/odbl/">Open Data Commons Open Database License (ODbL)</a></li> 	<li id="menu-item-412" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-412"><a href="https://opendatacommons.org/licenses/by/">Open Data Commons Attribution License</a></li> 	<li id="menu-item-414" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-82 current_page_item menu-item-414 active"><a href="https://opendatacommons.org/licenses/pddl/">Open Data Commons Public Domain Dedication and License (PDDL)</a></li> </ul> </li> <li id="menu-item-400" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-400 dropdown" data-dropdown="dropdown"><a href="https://opendatacommons.org/norms/" class=" dropdown-toggle">Norms</a> <ul class="sub-menu dropdown-menu"> 	<li id="menu-item-415" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-415"><a href="https://opendatacommons.org/norms/odc-by-sa/">ODC Attribution-Sharealike Community Norms</a></li> </ul> </li> <li id="menu-item-403" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-403 dropdown" data-dropdown="dropdown"><a title="Frequently Asked Questions" href="https://opendatacommons.org/faq/" class=" dropdown-toggle">FAQ</a> <ul class="sub-menu dropdown-menu"> 	<li id="menu-item-416" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-416"><a href="https://opendatacommons.org/faq/licenses/">Licenses FAQ</a></li> </ul> </li> <li id="menu-item-399" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-399"><a href="https://opendatacommons.org/news/">News</a></li> <li id="menu-item-397" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-397 dropdown" data-dropdown="dropdown"><a href="https://opendatacommons.org/about/" class=" dropdown-toggle">About</a> <ul class="sub-menu dropdown-menu"> 	<li id="menu-item-417" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-417"><a href="https://opendatacommons.org/about/advisory-council/">Advisory Council</a></li> 	<li id="menu-item-418" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-418"><a href="https://opendatacommons.org/about/contact/">Contact</a></li> </ul> </li> </ul>            </nav>
            <!-- Disabled until I've got separate images and confirmed link addresses -->
          </div>
        </div>

      </div>

      <form action="https://core.okfn.org/search/" method="post" class="search-form" role="search">
        <label for="search-terms" class="accessibly-hidden">Search for:</label>
        <input type="text" id="search-terms" name="search-terms" value="" />

        <label for="search-which" class="accessibly-hidden">Search these:</label><select name="search-which" id="search-which" style="width: auto"><option value="members">Members</option><option value="groups">Groups</option><option value="blogs">Blogs</option><option value="posts">Posts</option></select>
        <input type="submit" name="search-submit" id="search-submit" value="Search" />
        <input type="hidden" id="_wpnonce" name="_wpnonce" value="48e329c38a" /><input type="hidden" name="_wp_http_referer" value="/licenses/pddl/" />      </form><!-- #search-form -->
            
      <div class="sub-header">
        <div class="container">
          <div class="row">
            <div class="span8">
                          </div>
            <div class="span4">
                          </div>
          </div>
        </div>
      </div>

    </header>
    


    
        <div class="container">

<div class="row">
	<div id="content" class="span8">
		<div class="padder">

		
		<div class="page" id="blog-page" role="main">

			
				<h1 class="pagetitle">Open Data Commons Public Domain Dedication and License (PDDL)</h1>

				<div id="post-82" class="post-82 page type-page status-publish hentry">

					<div class="entry">

						<div style="font-size: 1.2em;">
The PDDL places the data(base) in the public domain (waiving all rights):</p>
<ul>
<li><a href="summary/">Plain language summary of the PDDL</a> (with graphics!)</li>
<li><a href="1.0/">Full legal text of the Public Domain Dedication and License v1.0</a></li>
</ul>
</div>
<p>NB: When using the PDDL you may wish to associate a set of complementary <a href="norms">Community Norms</a>.</p>
<h3>How to Apply</h3>
<p>Insert prominently in all relevant locations a statement such as:</p>
<p style="font-size: 1.1em; margin-left: 1em; font-weight: bold;">This {DATA(BASE)} is made available under the Public Domain Dedication and License v1.0 whose full text can be found at: <a href=" http://www.opendatacommons.org/licenses/pddl/1.0/">http://www.opendatacommons.org/licenses/pddl/1.0/</a></p>
<h4>Other Ways to Apply the License</h4>
<ul>
<li>You can replace the link with a full copy of the license inline or a link to a local copy of the license, either on your website or to a file distributed along with the database (e.g. a LICENSE.txt)</li>
<li>From a strict legal point of view these options, that is copying the text of the PDDL and releasing with the database, either as a part of the database, or as a file released alongside the database, are preferable.</li>
<li>Why? Dedicating your work to the public domain is a pretty big deal, especially in comparison to just licensing it: It means you completely give up your rights over the work. This can be a new area of the law in many jurisdictions, and so it is clearer that you dedicate your work if you do some sort of act, other than simply linking to the text, that shows you read the text of the PDDL and understood that by using it you dedicate your work to the public domain.</li>
</ul>

												
					</div>

				</div>

			
			
		</div><!-- .page -->

		
		</div><!-- .padder -->
	</div><!-- #content -->
  <div id="sidebar" class="span4" role="complementary">
	
	<div class="padder">

	
	
		
		
		<form name="login-form" id="sidebar-login-form" class="standard-form" action="https://opendatacommons.org/wp-login.php" method="post">
			<label>Username<br />
			<input type="text" name="log" id="sidebar-user-login" class="input" value="" tabindex="97" /></label>

			<label>Password<br />
			<input type="password" name="pwd" id="sidebar-user-pass" class="input" value="" tabindex="98" /></label>

			<p class="forgetmenot"><label><input name="rememberme" type="checkbox" id="sidebar-rememberme" value="forever" tabindex="99" /> Remember Me</label></p>

			
	<input type="hidden" name="redirect_to" value="" />

			<input type="submit" name="wp-submit" id="sidebar-wp-submit" value="Log In" tabindex="100" />
			<input type="hidden" name="testcookie" value="1" />
		</form>

		
	
	
	<div id="text-4" class="widget widget_text"><h3 class="widgettitle">More Information</h3>			<div class="textwidget"><ul>
<li><a href="http://okfn.org/opendata/">Introduction to Open Data</a></li>
<li><a href="http://opendefinition.org/">Open Definition for Data</a></li>
<li><a href="/guide/">Quick guide to making data open</a></li>
<li><a href="http://opendatahandbook.org/">Open Data Handbook</a></li>
</ul></div>
		</div>
	
	</div><!-- .padder -->

  </div>
</div>
    </div> <!-- /container -->

		
		
		
    <div class="topbar">
      <div class="padder">


					<div style="display:none">
	</div>
<link rel='stylesheet' id='wordpress-theme-okfn-css'  href='https://opendatacommons.org/wp-content/themes/wordpress-theme-okfn/style.css?ver=1534337949' type='text/css' media='all' />
<link rel='stylesheet' id='okfn-grey-css'  href='https://opendatacommons.org/wp-content/themes/wordpress-theme-okfn/css/grey.css?ver=1.1.2' type='text/css' media='all' />
<script type='text/javascript' src='https://opendatacommons.core.okfn.org/wp-content/plugins/okf-panel-master/assets/js/frontend.js'></script>
<script type='text/javascript' src='https://opendatacommons.org/wp-includes/js/comment-reply.min.js?ver=4.9.7'></script>
<script type='text/javascript' src='https://s0.wp.com/wp-content/js/devicepx-jetpack.js?ver=201833'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var tocplus = {"visibility_show":"show","visibility_hide":"hide","width":"Auto"};
/* ]]> */
</script>
<script type='text/javascript' src='https://opendatacommons.org/wp-content/plugins/table-of-contents-plus/front.min.js?ver=1509'></script>
<script type='text/javascript' src='https://opendatacommons.org/wp-includes/js/wp-embed.min.js?ver=4.9.7'></script>
<script type='text/javascript' src='https://stats.wp.com/e-201833.js' async='async' defer='defer'></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:6.3.2',blog:'114973043',post:'82',tz:'0',srv:'opendatacommons.org'} ]);
	_stq.push([ 'clickTrackerInit', '114973043', '82' ]);
</script>
      </div>
    </div>
			

    <footer>
    <div class="inner">
      <div class="container">
        
        <div id="row">
                  </div>

      </div><!-- /container -->
    </div><!-- /inner -->
     
    <div class="okf-footer">
      <div class="container">
        <ul>
                  <li><a href="http://okfn.org/terms-of-use/">Terms of use</a></li>
				          <li><a href="http://okfn.org/privacy-policy/">Privacy policy</a></li>
				          <li><a href="http://okfn.org/ip-policy/">IP Policy</a></li>
				        </ul>
      </div>
    </div>
    </footer>

		<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://opendatacommons.org/wp-content/themes/wordpress-theme-okfn/include/jquery.dotdotdot-1.5.6-packed.js"></script>

		<script>
		  // Tweeter
			$("div.tweeter.carousel > ul").addClass("carousel-inner");
			$("div.tweeter.carousel > ul li").addClass("item");
			$("div.tweeter.carousel > ul li:nth-child(1)").addClass("active");

		  // cycling for carousel
      $(".carousel.ticker").carousel({ interval: 6000 });
			$(".carousel.cycle").carousel({ interval: 8000 });

		  // allow button to hide elements
			$(".hide-it").click(function () {
				$(".hide-me").hide("slow");
			});

			// button for mailchimp form
		  $("div.nm_mc_form input.nm_mc_button").addClass("btn btn-primary");
    </script>

		
    <!-- sharethis -->
    	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"c6fb544dc9","applicationID":"19267323","transactionName":"ZwFQYEEDXUUDAUAIXl5Lc1dHC1xYTRJVBlQ=","queueTime":0,"applicationTime":1290,"atts":"S0ZTFgkZTks=","errorBeacon":"bam.nr-data.net","agent":""}</script></body>

</html>

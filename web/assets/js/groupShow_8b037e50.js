/*! 2016 Baidu Inc. All Rights Reserved */
define("common/cache",["require"],function(require){var e={},t="userInfo";return{setBatch:function(e){e||(e={});for(var t in e)if(e.hasOwnProperty(t))this.set(t,e[t])},set:function(t,n){return e[t]=n,this},get:function(t){return e[t]},clear:function(){return e={},this},remove:function(t){if(t)delete e[t];return this},setUserInfo:function(e){this.set(t,e||{})},getUserInfo:function(e){var n=this.get(t)||{};return e?n[e]:n},getUserGroup:function(){var e=this.getUserInfo();return{name:e.groupName,isOwner:e.isGroupOwner}},userHasGroup:function(){return!!this.getUserInfo().hasGroup},userIsGroupOwner:function(){return this.getUserInfo().isGroupOwner},setUserGroupName:function(e){this.getUserInfo().groupName=e},isUserStudent:function(){return this.getUserInfo("isStudent")}}}),define("common/page_9c1894bc",["require","bootstrap/collapse","bootstrap/dropdown","common/cache"],function(require){function e(e){var t=$(window).scrollTop()>100;e[t?"fadeIn":"fadeOut"]()}function t(){var t='<a id="gotop" style="display: none;"><span class="glyphicon glyphicon-menu-up up-icon" aria-hidden="true"></span></a>',n=$(t).appendTo(document.body);n.on("click",function(){$(document.body).stop().animate({scrollTop:0},200)}),$(window).on("scroll",$.proxy(e,this,n)),e(n)}require("bootstrap/collapse"),require("bootstrap/dropdown");var n=require("common/cache");return{init:function(e,i){n.setUserInfo(e),i&&t()}}}),define("common/uiHelper",["require","jquery","bootstrap/modal"],function(require){function e(){if(o){a.modal("hide");var e=o;o=null,e()}}function t(){if(!a)a=i("#confirm-msg-dlg"),i(".ok-btn",a).on("click",e)}function n(){if(!r)r=i("#alert-msg-dlg")}var i=require("jquery");require("bootstrap/modal");var r,a,o,exports={};return exports.toggleBtnLoadingState=function(e,t){e.button(t?"loading":"reset")},exports.openComfirmDlg=function(e,n){t(),i(".modal-body",a).html(e),a.modal("show"),o=n},exports.openAlertDlg=function(e){n(),i(".modal-body",r).html(e),r.modal("show")},exports.toggleBtnDisableState=function(e,t,n){if(e.prop("disabled",t),n)e.siblings("button").prop("disabled",t)},exports.getInputValue=function(e,t){return e&&e.val().trim().substr(0,t||100)},exports.jqformArr2Obj=function(e){for(var t={},n=0,i=e.length;i>n;n++)t[e[n].name]=e[n].value.trim();return t},exports}),function(e){function t(e,t){for(var n in t)if(t.hasOwnProperty(n))e[n]=t[n];return e}function n(){this.raw=[],this.length=0}function i(){return"___"+x++}function r(e,t){var n=new Function;n.prototype=t.prototype,e.prototype=new n,e.prototype.constructor=e}function a(e){return L[e]}function o(e){return'"'+e.replace(/\x5C/g,"\\\\").replace(/"/g,'\\"').replace(/\x0A/g,"\\n").replace(/\x09/g,"\\t").replace(/\x0D/g,"\\r")+'"'}function s(e){return e.replace(/[\^\[\]\$\(\)\{\}\?\*\.\+]/g,function(e){return"\\"+e})}function l(e){var t=arguments;return e.replace(/\{([0-9]+)\}/g,function(e,n){return t[n-0+1]})}function u(e){return e=e.replace(/^\s*\*/,""),l('gv({0},["{1}"])',o(e),e.replace(/\[['"]?([^'"]+)['"]?\]/g,function(e,t){return"."+t}).split(".").join('","'))}function d(e,t,n,i,r,a){for(var o=n.length,s=e.split(t),l=0,u=[],d=0,c=s.length;c>d;d++){var f=s[d];if(d){var p=1;for(l++;;){var h=f.indexOf(n);if(0>h){u.push(l>1&&p?t:"",f);break}if(l=i?l-1:0,u.push(l>0&&p?t:"",f.slice(0,h),l>0?n:""),f=f.slice(h+o),p=0,0===l)break}if(0===l)r(u.join("")),a(f),u=[]}else f&&a(f)}if(l>0&&u.length>0)a(t),a(u.join(""))}function c(e,t,n){var i,r=[],a=t.options,s="",l="",f="",p="";if(n)s="ts(",l=")",f=P,p=_,i=a.defaultFilter;return d(e,a.variableOpen,a.variableClose,1,function(e){if(n&&e.indexOf("|")<0&&i)e+="|"+i;var a=e.indexOf("|"),o=(a>0?e.slice(0,a):e).replace(/^\s+/,"").replace(/\s+$/,""),d=a>0?e.slice(a+1):"",h=0===o.indexOf("*"),m=[h?"":s,u(o),h?"":l];if(d){d=c(d,t);for(var g=d.split("|"),v=0,y=g.length;y>v;v++){var b=g[v];if(/^\s*([a-z0-9_-]+)(\((.*)\))?\s*$/i.test(b)){if(m.unshift('fs["'+RegExp.$1+'"]('),RegExp.$3)m.push(",",RegExp.$3);m.push(")")}}}r.push(f,m.join(""),p)},function(e){r.push(f,n?o(e):e,p)}),r.join("")}function f(e,t){this.value=e,this.engine=t}function p(e,t){this.value=e,this.engine=t,this.children=[],this.cloneProps=[]}function h(e,t){var n=e.stack,i=t?n.find(function(e){return e instanceof t}):n.bottom();if(i){for(var r;(r=n.top())!==i;){if(!r.autoClose)throw new Error(r.type+" must be closed manually: "+r.value);r.autoClose(e)}i.close(e)}return i}function m(e,t){if(!/^\s*([a-z0-9\/_-]+)\s*(\(\s*master\s*=\s*([a-z0-9\/_-]+)\s*\))?\s*/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.master=RegExp.$3,this.name=RegExp.$1,p.call(this,e,t),this.blocks={}}function g(e,t){if(!/^\s*([a-z0-9\/_-]+)\s*$/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.name=RegExp.$1,p.call(this,e,t),this.cloneProps=["name"]}function v(e,t){if(!/^\s*([a-z0-9\/_-]+)\s*$/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.name=RegExp.$1,p.call(this,e,t),this.cloneProps=["name","state","blocks","target"],this.blocks={}}function y(e,t){if(!/^\s*([a-z0-9_]+)\s*=([\s\S]*)$/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.name=RegExp.$1,this.expr=RegExp.$2,p.call(this,e,t),this.cloneProps=["name","expr"]}function b(e,t){if(!/^\s*([a-z0-9_-]+)\s*(\(([\s\S]*)\))?\s*$/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.name=RegExp.$1,this.args=RegExp.$3,p.call(this,e,t),this.cloneProps=["name","args"]}function S(e,t){if(!/^\s*([a-z0-9\/_-]+)\s*(\(([\s\S]*)\))?\s*$/i.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.name=RegExp.$1,this.args=RegExp.$3,p.call(this,e,t),this.cloneProps=["name","args"]}function I(e,t){var n=new RegExp(l("^\\s*({0}[\\s\\S]+{1})\\s+as\\s+{0}([0-9a-z_]+){1}\\s*(,\\s*{0}([0-9a-z_]+){1})?\\s*$",s(t.options.variableOpen),s(t.options.variableClose)),"i");if(!n.test(e))throw new Error("Invalid "+this.type+" syntax: "+e);this.list=RegExp.$1,this.item=RegExp.$2,this.index=RegExp.$4,p.call(this,e,t),this.cloneProps=["list","item","index"]}function E(e,t){p.call(this,e,t)}function A(e,t){E.call(this,e,t)}function w(e,t){p.call(this,e,t)}function k(e,t){t.target=e;var n=t.engine,i=e.name;if(n.targets[i])switch(n.options.namingConflict){case"override":n.targets[i]=e,t.targets.push(i);case"ignore":break;default:throw new Error("[ETPL_TARGET_EXISTS]"+i)}else n.targets[i]=e,t.targets.push(i)}function C(e,t){$[e]=t,t.prototype.type=e}function T(e){this.options={commandOpen:"<!--",commandClose:"-->",commandSyntax:/^\s*(\/)?([a-z]*)\s*(?::([\s\S]*))?$/,variableOpen:"${",variableClose:"}",defaultFilter:"html"},this.config(e),this.targets={},this.filters=t({},M)}function R(e,t){function i(){var e;if(c.length>0&&(e=c.join(""))){var n=new f(e,t);if(n.beforeAdd(u),l.top().addChild(n),c=[],t.options.strip&&u.current instanceof p)n.value=e.replace(/^[\x20\t\r]*\n/,"");u.current=n}}var r,a=t.options.commandOpen,o=t.options.commandClose,s=t.options.commandSyntax,l=new n,u={engine:t,targets:[],stack:l,target:null},c=[];return d(e,a,o,0,function(e){var n,l=s.exec(e);if(l&&(n=l[2]||"target")&&(r=$[n.toLowerCase()])&&"function"==typeof r){i();var d=u.current;if(t.options.strip&&d instanceof f)d.value=d.value.replace(/\r?\n[\x20\t]*$/,"\n");if(l[1])d=h(u,r);else{if(d=new r(l[3],t),"function"==typeof d.beforeOpen)d.beforeOpen(u);d.open(u)}u.current=d}else if(!/^\s*\/\//.test(e))c.push(a,e,o);r=null},function(e){c.push(e)}),i(),h(u),u.targets}n.prototype={push:function(e){this.raw[this.length++]=e},pop:function(){if(this.length>0){var e=this.raw[--this.length];return this.raw.length=this.length,e}},top:function(){return this.raw[this.length-1]},bottom:function(){return this.raw[0]},find:function(e){for(var t=this.length;t--;){var n=this.raw[t];if(e(n))return n}}};var x=178245,L={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"},M={html:function(e){return e.replace(/[&<>"']/g,a)},url:encodeURIComponent,raw:function(e){return e}},B='var r="";',P="r+=",_=";",N="return r;";if("undefined"!=typeof navigator&&/msie\s*([0-9]+)/i.test(navigator.userAgent)&&RegExp.$1-0<8)B="var r=[],ri=0;",P="r[ri++]=",N='return r.join("");';f.prototype={getRendererBody:function(){var e=this.value,t=this.engine.options;if(!e||t.strip&&/^\s*$/.test(e))return"";else return c(e,this.engine,1)},clone:function(){return this}},p.prototype={addChild:function(e){this.children.push(e)},open:function(e){var t=e.stack.top();t&&t.addChild(this),e.stack.push(this)},close:function(e){if(e.stack.top()===this)e.stack.pop()},getRendererBody:function(){for(var e=[],t=this.children,n=0;n<t.length;n++)e.push(t[n].getRendererBody());return e.join("")},clone:function(){for(var e=this.constructor,t=new e(this.value,this.engine),n=0,i=this.children.length;i>n;n++)t.addChild(this.children[n].clone());for(var n=0,i=this.cloneProps.length;i>n;n++){var r=this.cloneProps[n];t[r]=this[r]}return t}};var D='data=data||{};var v={},fs=engine.filters,hg=typeof data.get=="function",gv=function(n,ps){var p=ps[0],d=v[p];if(d==null){if(hg){return data.get(n);}d=data[p];}for(var i=1,l=ps.length;i<l;i++)if(d!=null)d = d[ps[i]];return d;},ts=function(s){if(typeof s==="string"){return s;}if(s==null){s="";}return ""+s;};';r(m,p),r(g,p),r(v,p),r(y,p),r(b,p),r(S,p),r(I,p),r(E,p),r(A,E),r(w,E);var V={READING:1,READED:2,APPLIED:3,READY:4};v.prototype.applyMaster=m.prototype.applyMaster=function(e){function t(e){var i=e.children;if(i instanceof Array)for(var r=0,a=i.length;a>r;r++){var o=i[r];if(o instanceof g&&n[o.name])o=i[r]=n[o.name];t(o)}}if(this.state>=V.APPLIED)return 1;var n=this.blocks,i=this.engine.targets[e];if(i){if(i.applyMaster(i.master))return this.children=i.clone().children,t(this),this.state=V.APPLIED,1}else if("error"===this.engine.options.missTarget)throw new Error("[ETPL_MISS_TARGET]"+e+", when extended by "+(this.target?this.target.name:this.name))},m.prototype.isReady=function(){function e(r){for(var a=0,o=r.children.length;o>a;a++){var s=r.children[a];if(s instanceof v){var l=t.targets[s.name];if(!l&&"error"===t.options.missTarget)throw new Error("[ETPL_MISS_TARGET]"+s.name+", when imported by "+n);i=i&&l&&l.isReady(t)}else if(s instanceof p)e(s)}}if(this.state>=V.READY)return 1;var t=this.engine,n=this.name,i=1;if(this.applyMaster(this.master))return e(this),i&&(this.state=V.READY),i;else return void 0},m.prototype.getRenderer=function(){if(this.renderer)return this.renderer;if(this.isReady()){var e=new Function("data","engine",[D,B,this.getRendererBody(),N].join("\n")),t=this.engine;return this.renderer=function(n){return e(n,t)},this.renderer}return null},m.prototype.open=function(e){h(e),p.prototype.open.call(this,e),this.state=V.READING,k(this,e)},y.prototype.open=S.prototype.open=function(e){e.stack.top().addChild(this)},g.prototype.open=function(e){p.prototype.open.call(this,e),e.stack.find(function(e){return e.blocks}).blocks[this.name]=this},A.prototype.open=function(e){var t=new w;t.open(e);var n=h(e,E);n.addChild(this),e.stack.push(this)},w.prototype.open=function(e){var t=h(e,E);t.addChild(this),e.stack.push(this)},v.prototype.open=function(e){this.parent=e.stack.top(),this.target=e.target,p.prototype.open.call(this,e),this.state=V.READING},S.prototype.close=y.prototype.close=function(){},v.prototype.close=function(e){p.prototype.close.call(this,e),this.state=V.READED},m.prototype.close=function(e){p.prototype.close.call(this,e),this.state=this.master?V.READED:V.APPLIED,e.target=null},v.prototype.autoClose=function(e){var t=this.parent.children;t.push.apply(t,this.children),this.children.length=0;for(var n in this.blocks)this.target.blocks[n]=this.blocks[n];this.blocks={},this.close(e)},S.prototype.beforeOpen=v.prototype.beforeOpen=y.prototype.beforeOpen=I.prototype.beforeOpen=b.prototype.beforeOpen=g.prototype.beforeOpen=E.prototype.beforeOpen=f.prototype.beforeAdd=function(e){if(!e.stack.bottom()){var t=new m(i(),e.engine);t.open(e)}},v.prototype.getRendererBody=function(){return this.applyMaster(this.name),p.prototype.getRendererBody.call(this)},S.prototype.getRendererBody=function(){return l("{0}engine.render({2},{{3}}){1}",P,_,o(this.name),c(this.args,this.engine).replace(/(^|,)\s*([a-z0-9_]+)\s*=/gi,function(e,t,n){return(t||"")+o(n)+":"}))},y.prototype.getRendererBody=function(){if(this.expr)return l("v[{0}]={1};",o(this.name),c(this.expr,this.engine));else return""},E.prototype.getRendererBody=function(){return l("if({0}){{1}}",c(this.value,this.engine),p.prototype.getRendererBody.call(this))},w.prototype.getRendererBody=function(){return l("}else{{0}",p.prototype.getRendererBody.call(this))},I.prototype.getRendererBody=function(){return l('var {0}={1};if({0} instanceof Array)for (var {4}=0,{5}={0}.length;{4}<{5};{4}++){v[{2}]={4};v[{3}]={0}[{4}];{6}}else if(typeof {0}==="object")for(var {4} in {0}){v[{2}]={4};v[{3}]={0}[{4}];{6}}',i(),c(this.list,this.engine),o(this.index||i()),o(this.item),i(),i(),p.prototype.getRendererBody.call(this))},b.prototype.getRendererBody=function(){var e=this.args;return l("{2}fs[{5}]((function(){{0}{4}{1}})(){6}){3}",B,N,P,_,p.prototype.getRendererBody.call(this),o(this.name),e?","+c(e,this.engine):"")};var $={};C("target",m),C("block",g),C("import",v),C("use",S),C("var",y),C("for",I),C("if",E),C("elif",A),C("else",w),C("filter",b),T.prototype.config=function(e){t(this.options,e)},T.prototype.compile=T.prototype.parse=function(e){if(e){var t=R(e,this);if(t.length)return this.targets[t[0]].getRenderer()}return new Function('return ""')},T.prototype.getRenderer=function(e){var t=this.targets[e];if(t)return t.getRenderer();else return void 0},T.prototype.render=function(e,t){var n=this.getRenderer(e);if(n)return n(t);else return""},T.prototype.addFilter=function(e,t){if("function"==typeof t)this.filters[e]=t};var j=new T;if(j.Engine=T,j.version="3.1.0","object"==typeof exports&&"object"==typeof module)exports=module.exports=j;else if("function"==typeof define&&define.amd)define("etpl/main",[],j);else e.etpl=j}(this),define("etpl",["etpl/main"],function(e){return e}),define("common/tpl",["require","etpl"],function(require){var e=require("etpl"),exports={};return exports.createTplEngine=function(t){var n=new e.Engine;return n.compile(t),{render:function(e,t){var i=n.getRenderer(e);return i&&i(t||{})}}},exports.renderTpl=function(e,t){return e.replace(/\$\{(.+?)\}/g,function(e,n){return null==t[n]?"":t[n]})},exports}),define("common/infoPage",["require","common/tpl","jquery-bootpag/jquery.bootpag"],function(require){function e(e,t){if(!s)s=o.createTplEngine(l);return s.render(e,t)}function t(e){return $(".page-wrap",e.infoWrap)}function n(e,t,n){a(e,n)}function i(e,i){var r=t(e);r.off();var a=i.totalPage;if(1>=a)r.hide();else r.bootpag({total:a,page:i.pageNo,maxVisible:10}).on("page",$.proxy(n,this,e)),r.show()}function r(t,n){var r,a,o=0===+n.status;if(o){var s=n.data;a=s.total;var l=t.formater,d=s.listData;if(l)d=l(d);var c=s.pageSize,f=c&&Math.ceil(a/c);r={listData:d,totalPage:f,emtpyTip:"暂无"}}else a="-",r={error:n.statusInfo||"读取失败"};var p=t.infoWrap;if(t.callback)t.callback(a,r);else $("h4 >em",p).text(a);if($(u,p).html(e(t.tpl,r)),o)i(t,{pageNo:n.data.pageNo,totalPage:f});p.css("height","auto")}function a(e,t){var n=e.infoWrap;if(null!=t)n.css("height",n.outerHeight());var i=e.getParams?e.getParams(t):{pageNo:t||1};$.post(e.reqUrl,i,"json").then($.proxy(r,this,e))}var o=require("common/tpl");require("jquery-bootpag/jquery.bootpag");var s,l,u=".result-list-wrap",exports={};return exports.loadPageInfo=a,exports.setInfoTpl=function(e){l=e},exports}),define("user/group.tpl",[],function(){return'<!-- target: pageList --><!-- if: ${error} --><div class="empty-tip text-danger">${error}</div><!-- elif: ${listData.length} --><!-- block: list --><!-- /block --><!-- else --><p class="empty-tip">${emtpyTip}</p><!-- /if --><!-- target: taskList(master=pageList) --><!-- block: list --><ul class="result-list task-list"><!-- for: ${listData} as ${item} --><li class="list-item"><div class="list-content"><a class="info-title" href="${item.taskDetailUrl}">${item.taskTitle}</a><p><span class="key">提交时间：</span><span class="value">${item.submitTime}</span></p><p class="code-info"><span class="key">代码地址：</span><a class="value" href="${item.codeUrl}" target="_blank">${item.codeUrl}</a></p><p class="clearfix"><span class="review-info pull-left">已经有<em>${item.reviewNum}</em>人 review</span><span class="score-info pull-right">平均得分：<em>${item.score}</em></span></p><a class="btn btn-default btn-sm" href="${item.reviewUrl}">查看详情</a></div></li><!-- /for --></ul><!-- /block --><!-- target: reviewList(master=pageList) --><!-- block: list --><ul class="result-list review-list"><!-- for: ${listData} as ${item} --><li class="list-item"><div class="list-content"><a class="info-title" href="${item.taskUrl}">${item.taskTitle}</a><p><span class="key">提交团队：</span><a class="value" href="${item.groupUrl}">${item.groupName}</a></p><p class="code-info"><span class="key">代码地址：</span><a class="value" href="${item.submitCodeUrl}" target="_blank">${item.submitCodeUrl}</a></p><p><span class="key"><a href="${item.userUrl}" target="_blank">${item.userName}</a>review 时间：</span><span class="value">${item.reviewTime}</span></p><p><span class="key">打分：</span><em class="value">${item.reviewScore}</em></p><a class="btn btn-default btn-sm" href="${item.reviewUrl}">查看详情</a></div></li><!-- /for --></ul><!-- /block --><!-- target: noteList(master=pageList) --><!-- block: list --><ul class="result-list note-list"><!-- for: ${listData} as ${item} --><li class="list-item"><div class="list-content"><span class="view-info"><em>${item.viewCount}</em><span class="note text-muted">浏览</span></span><div class="note-info"><a class="info-title" href="${item.detailUrl}">${item.title}</a><p class="clearfix"><span class="pull-left">作者：<a href="${item.authorUrl}">${item.authorName}</a></span><span class="pull-right">发布时间：<span class="value">${item.publishDate}</span></span></p></div></div></li><!-- /for --></ul><!-- /block -->'}),define("user/group/updateAnnounce",["require","bootstrap/modal","jquery-bootpag/jquery.bootpag","bootstrap/button","jquery","common/uiHelper"],function(require){function e(e){var t=u("#input-announce-content");if(arguments.length)t.val(e);else return t.val()}function t(){if(!o.prop("disabled")){var t;if(l.hasClass("empty-tip"))t="";else t=l.text().trim();e(t),n("")}r.modal("show")}function n(e,t){var n=u(".submit-tip",r);n[t?"addClass":"removeClass"]("text-danger"),n[t?"removeClass":"addClass"]("text-success"),n.html(e)}function i(){d.toggleBtnLoadingState(a,!0),d.toggleBtnDisableState(o,!0);var e=d.jqformArr2Obj(s.serializeArray());u.post("/2016/group/updateAnnouncement",e,"json").then(function(t){d.toggleBtnLoadingState(a,!1),d.toggleBtnDisableState(o,!1);var i=0===+t.status;if(i){n("更新成功");var r=e.content;l[r?"removeClass":"addClass"]("empty-tip"),l.text(r||"暂无")}else n(t.statusInfo||"更新失败",!0)})}require("bootstrap/modal"),require("jquery-bootpag/jquery.bootpag"),require("bootstrap/button");var r,a,o,s,l,u=require("jquery"),d=require("common/uiHelper"),exports={};return exports.init=function(){if(r=u("#update-announce-dlg"),r.length)a=u(".submit-btn",r),a.on("click",i),s=u(".announce-form",r),o=u(".edit-announce-btn"),o.on("click",t),l=u(".announcement-wrap .content")},exports}),define("user/groupShow_8b037e50",["require","jquery","common/page_9c1894bc","common/cache","common/uiHelper","bootstrap/tab","common/infoPage","./group.tpl","./group/updateAnnounce"],function(require){function e(e){return a.each(e||[],function(e,t){var n=t.viewCount||0;if(n>1e4)t.viewCount=Number(n/1e4).toFixed(1)+"万"}),e}function t(t,n,i){var r={task:{reqUrl:"/2016/group/getTaskList",tpl:"taskList"},review:{reqUrl:"/2016/group/getReviewList",tpl:"reviewList"},note:{reqUrl:"/2016/group/getNoteList",tpl:"noteList"}},o=r[t];if(o)o.infoWrap=a("#"+t),o.formater=e,o.callback=function(e,t){if(a("em",i).text(e),t.error)i.data("loaded",0)},o.getParams=function(e){return{pageNo:e||1,groupId:l}},n(o)}function n(e,t){e.data("del",t),e[t?"addClass":"removeClass"]("text-muted")}function i(){d.html(u)}function r(e){e.preventDefault();var t=a(this);if(!t.data("del"))s.openComfirmDlg("确认移除该导师?",function(){n(t,!0);var e=t.parents(".member"),r=e.data("id");a.post("/2016/group/deleteMentor",{id:r},"json").then(function(r){var a=0===+r.status;if(a)e.remove(),u--,i();else n(t,!1),s.openAlertDlg(r.statusInfo||"移除导师失败")})})}var a=require("jquery"),o=require("common/page_9c1894bc"),s=(require("common/cache"),require("common/uiHelper"));require("bootstrap/tab");var l,u,d;return{init:function(e,n){if(o.init(e,!0),l=n.groupId,n.hasGroupInfo){var i=require("common/infoPage");i.setInfoTpl(require("./group.tpl"));var s=i.loadPageInfo;a(".group-tabs a").click(function(e){e.preventDefault();var n=a(this);if(!n.data("loaded")){n.data("loaded",1),n.tab("show");var i=n.attr("href").substr(1);t(i,s,n)}}),a(".group-tabs>li>a").get(0).click()}if(n.selfGroup)require("./group/updateAnnounce").init();if(n.updateGroup){var c=a(".member-list").on("click",".del-btn",r);u=a(".member",c).length,d=a(".member-count")}}}});
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <html xmlns:th="http://www.thymeleaf.org">
        <!-- Mirrored from icsse2017.hcmute.edu.vn/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 21 Mar 2017 02:12:33 GMT -->
        <!-- Added by HTTrack -->
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <!-- /Added by HTTrack -->

        <head>
            <title> WELCOME TO ICSSE 2017 </title>            
            <link href="/resources/css/show_img.css" rel="stylesheet" type="text/css" />
            <script type="text/javascript" src="/resources/css/jquery-1.7.2.min.js" > </script>
            <script src="/resources/css/Common.js" type="text/javascript"></script>
            <script src="/resources//css/PagingContent.js" type="text/javascript"></script>
            <link rel="shortcut icon" type="image/png" href="/resources/img/banner.png " />
            <link href="/resources/css/lightbox.css" rel="stylesheet" type="text/css" />
            <script src="/resources/css/lightbox.min.js" type="text/javascript"></script>
            <link href="/resources/css/search_Article.css" rel="stylesheet" />
            <script language="javascript" type="text/javascript">
                function SearchProcess(event) {
                    if (event.keyCode == 13) {
                        OnSearch(document.getElementById('txtSearchArticle').value);
                        return false;
                    }
                    return true;
                }

                function OnSearch(query) {
                    PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
                }

                function OnSearchSuccess(results, context, methodName) {
                    var position = results.indexOf('_');
                    totalRecords = results.substring(0, position);
                    results = results.substring(position + 1);
                    LoadContentAndPaging(results);
                }

                function OnSearchFailed(results, context, methodName) {}

                function retitleUrl(str) {
                    str = str.replace(/^\s+|\s+$/g, ''); // trim
                    str = str.toLowerCase();
                    // remove accents, swap ñ for n, etc
                    var from = "àáảãạăằắẳẵặâầấẩẫậđèéẻẽẹêềếểễệìíỉĩịòóỏõọôồốổỗộơờớởỡợùúủũụưừứửữựỳýỷỹỵ·/_,:;";
                    var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
                    for (var i = 0, l = from.length; i < l; i++) {
                        str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
                    }
                    str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
                        .replace(/\s+/g, '-') // collapse whitespace and replace by -
                        .replace(/-+/g, '-'); // collapse dashes
                    return str;
                };

                function popunder() {
                    $('a').not('[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]').each(function() {
                        $(this).attr('href', function(index, value) {
                            if (value != undefined) {
                                var index = value.indexOf("Default.aspx");
                                if (index >= 0) return value = "/" + value.substring(index, value.length);
                            }
                        });
                    });
                    var articleId = '' != '' ? '' : '';
                    var topicId = '' != '' ? '' : '';
                    var moduleId = '' != '' ? '' : '';
                    if (articleId != '') {
                        if (window.history.state == null) {
                            if (articleId.indexOf("index.html") > -1) articleId = articleId.substr(0, articleId.indexOf("index.html"));
                            window.history.replaceState({
                                ArticleId: articleId
                            }, "ArticleId", "/ArticleId/" + articleId + "/" + retitleUrl(''));
                        }
                    }
                    if (topicId != '') {
                        if (window.history.state == null) {
                            if (topicId.indexOf("index.html") > -1) topicId = topicId.substr(0, topicId.indexOf("index.html"));
                            window.history.replaceState({
                                TopicId: topicId
                            }, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
                        }
                    }
                }
            </script>
            <link href="WebResource35b9.css?d=QGz0EVx6KnXd0XFNz6_h8xNXGaTBbw0tdFlEudQ7cm-OthWnn6Dm_5tU0MRnaGIhZBbRg9S7WqTpHMZa1xNtEI0ab6Kl1IPnRi5TjbKoJFbytbX9TFl44EGYy--GyfelKV3DXQ2&amp;t=636040235083572431" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
            <link href="WebResourceb3b4.css?d=x4growm4tE1xfqgq7CUmVsUnI-CbXa2N-c2_fNRwnEpvDP0BV-wXVIwtg-UArpbb2CDL-uqyWHg0pIMI2IqW_DG9HsBwwwsOkPeV5QgKyY9Yh5O4O982ECGyV1iNUPf_9TfsdN6N5kUDZgz-JeRM7Yx1qwU1&amp;t=636040235083572431" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
            <link href="WebResourcee0ee.css?d=ytD-yNU6w7OB5aQbpzdcKJJ4smWyZMrK26w2o8npDQvDJ2icAgnw46NhWNMATnygLURPdF6r1twj4HqvCpovy2cbE23Jpa5bO0SD9RAs5_bYKKb1dSU8kaK__zLNU1OzkJIV0Q2&amp;t=636040235083572431" type="text/css" rel="stylesheet" class="Telerik_stylesheet" />
        </head>

        <body class="body" onload='popunder();'>
            <form name="form1" method="post" action="#" id="form1">
                <div>
                    <input type="hidden" name="RadScriptManager1_TSM" id="RadScriptManager1_TSM" value="" />
                    <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
                    <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
                    <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPaA8FDzhkNDcwM2E2NzY0YmVkMhgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnXeVCxEQo0PtEDMXWFGT3w3D5RWyg==" /> </div>
                <script type="text/javascript">
                    //<![CDATA[
                    var theForm = document.forms['form1'];
                    if (!theForm) {
                        theForm = document.form1;
                    }

                    function __doPostBack(eventTarget, eventArgument) {
                            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                                theForm.__EVENTTARGET.value = eventTarget;
                                theForm.__EVENTARGUMENT.value = eventArgument;
                                theForm.submit();
                            }
                        }
                        //]]>
                </script>
                <script src="WebResource9300.js?d=m-BGqXLvdmxbkGKJ0cdC31IEEQSwl8M48qzhTdLsvA4cQATMbLAUn5HThStArYaMS9SVdQ3Idd2S2XYrPm7fUFdO8YM1&amp;t=635328605200000000" type="text/javascript"></script>
                <script src="Telerik.Web.UI.WebResourcec672.js?_TSM_HiddenField_=RadScriptManager1_TSM&amp;compress=1&amp;_TSM_CombinedScripts_=%3b%3bSystem.Web.Extensions%2c+Version%3d4.0.0.0%2c+Culture%3dneutral%2c+PublicKeyToken%3d31bf3856ad364e35%3aen-US%3a509f92a1-e5fd-464f-a450-13846a6c973b%3aea597d4b%3ab25378d2%3bTelerik.Web.UI%2c+Version%3d2011.1.315.35%2c+Culture%3dneutral%2c+PublicKeyToken%3d121fae78165ba3d4%3aen-US%3ae4ca4719-c559-4761-8501-9be20bbda1fe%3a16e4e7cd%3a874f8ea2%3af7645509%3a24ee1bba%3af46195d3%3a19620875%3a490a9d4e%3abd8f85e4%3ae330518b%3a1e771326%3ac8618e41" type="text/javascript"></script>
                <script type="text/javascript">
                    //<![CDATA[
                    if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
                    //]]>
                </script>
                <script src="Services/jsdebug.js" type="text/javascript"></script>
                <script src="Services/ModuleProxy.asmx/jsdebug.js" type="text/javascript"></script>
                <script src="Services/CMS.asmx/jsdebug.js" type="text/javascript"></script>
                <script src="Services/WeatherService.asmx/jsdebug.js" type="text/javascript"></script>
                <div>
                    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" /> </div>
                <div id="RadWindowManager1" style="display:none;">
                    <!-- 2011.1.315.35 -->
                    <div id="RadWindowManager1_alerttemplate" style="display:none;">
                        <div class="rwDialogPopup radalert">
                            <div class="rwDialogText"> {1} </div>
                            <div>
                                <a onclick="$find('{0}').close(true);" class="rwPopupButton" href="javascript:void(0);"> <span class="rwOuterSpan">
						<span class="rwInnerSpan">##LOC[OK]##</span> </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div id="RadWindowManager1_prompttemplate" style="display:none;">
                        <div class="rwDialogPopup radprompt">
                            <div class="rwDialogText"> {1} </div>
                            <div>
                                <script type="text/javascript">
                                    function RadWindowprompt_detectenter(id, ev, input) {
                                        if (!ev) ev = window.event;
                                        if (ev.keyCode == 13) {
                                            var but = input.parentNode.parentNode.getElementsByTagName("A")[0];
                                            if (but) {
                                                if (but.click) but.click();
                                                else if (but.onclick) {
                                                    but.focus();
                                                    var click = but.onclick;
                                                    but.onclick = null;
                                                    if (click) click.call(but);
                                                }
                                            }
                                            return false;
                                        } else return true;
                                    }
                                </script>
                                <input title="Eneter Value" onkeydown="return RadWindowprompt_detectenter('{0}', event, this);" type="text" class="rwDialogInput" value="{2}" /> </div>
                            <div> <a onclick="$find('{0}').close(this.parentNode.parentNode.getElementsByTagName('input')[0].value);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a> <a onclick="$find('{0}').close(null);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a> </div>
                        </div>
                    </div>
                    <div id="RadWindowManager1_confirmtemplate" style="display:none;">
                        <div class="rwDialogPopup radconfirm">
                            <div class="rwDialogText"> {1} </div>
                            <div> <a onclick="$find('{0}').close(true);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a> <a onclick="$find('{0}').close(false);" class="rwPopupButton" href="javascript:void(0);"><span class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a> </div>
                        </div>
                    </div>
                    <input id="RadWindowManager1_ClientState" name="RadWindowManager1_ClientState" type="hidden" /> </div>
                <script type="text/javascript">
                    //<![CDATA[
                    Sys.WebForms.PageRequestManager._initialize('RadScriptManager1', 'form1', [], [], [], 90, '');
                    //]]>
                </script>
                <link href="/resources/ImagesPortal/PhongBan/main.css" rel="stylesheet" />
                <link href="/resources/css/mainPortlets.css" rel="stylesheet" />
                <script language="javascript" type="text/javascript">
                    function SearchProcess(event) {
                        if (event.keyCode == 13) {
                            OnSearch(document.getElementById('txtSearchArticle').value);
                            return false;
                        }
                        return true;
                    }

                    function OnSearch(query) {
                        PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
                    }

                    function OnSearchSuccess(results, context, methodName) {
                        var position = results.indexOf('_');
                        totalRecords = results.substring(0, position);
                        results = results.substring(position + 1);
                        LoadContentAndPaging(results);
                    }

                    function OnSearchFailed(results, context, methodName) {}
                </script>
                <!-- phan giao dien -->
                <div class="gray">
				    <div class="wrapper">
				        <table cellspacing="0" cellpadding="0" border="0" style="border-collapse:collapse;">
				            <tr>
				                <td colspan="2">
				                    <div id="pnTop">
				                        <div id="pnTopDisplay" style="width:1000px;float:left">
				                        <!-- phan header -->
				                            <jsp:include page="header.jsp"></jsp:include>			
				
				                            <script>
				                                $(document).ready(function() {
				                                    $(".nivoSlider").nivoSlider({
				                                        effect: 'random',
				                                        slices: 15,
				                                        boxCols: 8,
				                                        boxRows: 4,
				                                        animSpeed: 500,
				                                        pauseTime: 3000,
				                                        startSlide: 0,
				                                        directionNav: true,
				                                        controlNav: true,
				                                        controlNavThumbs: false,
				                                        pauseOnHover: true,
				                                        manualAdvance: false,
				                                        prevText: 'Prev',
				                                        nextText: 'Next',
				                                        randomStart: false,
				                                        beforeChange: function() {},
				                                        afterChange: function() {},
				                                        slideshowEnd: function() {},
				                                        lastSlide: function() {},
				                                        afterLoad: function() {}
				                                    });
				                                    $('.nivoSlider').css('height', '350px');
				                                    $('.nivoSlider img').css('height', '350px');
				                                })
				                            </script>
				                        </div>
				                    </div>			
				                </td>
				            </tr>
				            <tr valign="top">
				                <td>
				                  <!-- phan body -->
				                    <jsp:include page="body.jsp"></jsp:include>
				                </td>
				            </tr>
				            <tr>
				                <td colspan="2">
				                  <!-- phan footer -->
				                    <jsp:include page="footer.jsp"></jsp:include>
				                </td>
				            </tr>
				        </table>
				    </div>
				</div>
                <script type="text/javascript">
                    //<![CDATA[
                    Sys.Application.add_init(function() {
                        $create(Telerik.Web.UI.RadWindowManager, {
                            "clientStateFieldID": "RadWindowManager1_ClientState",
                            "formID": "form1",
                            "iconUrl": "",
                            "minimizeIconUrl": "",
                            "name": "RadWindowManager1",
                            "skin": "Default",
                            "windowControls": "[]"
                        }, null, null, $get("RadWindowManager1"));
                    });
                    Sys.Application.add_init(function() {
                        $create(Telerik.Web.UI.RadMenu, {
                            "_childListElementCssClass": null,
                            "_skin": "Green",
                            "attributes": {},
                            "clientStateFieldID": "ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState",
                            "collapseAnimation": "{\"duration\":450}",
                            "expandAnimation": "{\"duration\":450}",
                            "itemData": [{
                                "navigateUrl": "~/Default.aspx?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3"
                            }, {
                                "items": [{
                                    "navigateUrl": "~/Default.aspx?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"
                                }, {
                                    "navigateUrl": "~/Default.aspx?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"
                                }, {
                                    "navigateUrl": "~/Default.aspx?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"
                                }],
                                "navigateUrl": "#"
                            }, {
                                "navigateUrl": "~/Default.aspx?ArticleId=fc8c1223-a9d2-46b5-9db3-665c778f0ac9"
                            }, {
                                "navigateUrl": "~/Default.aspx?ArticleId=945864b5-165f-45a3-8e75-a9ba5ac1f9ef"
                            }, {
                                "navigateUrl": "~/Default.aspx?ArticleId=707e0e24-5220-4821-a40f-4041eb76cc1a"
                            }, {
                                "navigateUrl": "~/Default.aspx?ArticleId=be204435-0615-4fc3-aa86-392d871decc8"
                            }, {
                                "navigateUrl": "#"
                            }, {
                                "navigateUrl": "#"
                            }, {
                                "navigateUrl": "~/Default.aspx?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5"
                            }]
                        }, null, null, $get("ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"));
                    });
                    //]]>
                </script>
            </form>
        </body>
        <!-- Mirrored from icsse2017.hcmute.edu.vn/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 21 Mar 2017 02:13:38 GMT -->

        </html>
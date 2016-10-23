<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Leaderboard.aspx.cs" Inherits="Leaderboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Junior Achievement</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>

<!--CSS responsive menu bar-->
<nav>
    <ul class="topnav" id="myTopnav">
        <li><a href="Default.aspx">Home</a></li>
        <li><a href="https://triadja.org/programs/">Program</a></li>
        <li><a href="https://triadja.org/classroom-volunteers/">Volunteer</a></li>
        <li><a href="https://triadja.org/invest/">Invest</a></li>
        <li><a href="Leaderboard.aspx">Leaderboard</a></li>
        <li><a href="https://triadja.org/contact/">Contact Us</a></li>
        <li class="icon"><a href="javascript:void(0);" style="font-size: 15px;" onclick="myFunction()">☰</a></li>
    </ul>
</nav>

<body>
    <div class="centered">
        <form  runat="server">
            <div>
                <h1>
                    Top Volunteers
                    <asp:DropDownList ID="CompanyName" runat="server" OnSelectedIndexChanged="CompanyName_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                </h1>
            </div>
        </form>
        <div class="tg-wrap">
            <table id="tg-UoajZ" class="tg" style="margin: 0px auto">
                <tr>
                    <th class="tg-r3m7">Rank</th>
                    <th class="tg-y2tu">Name</th>
                    <th class="tg-y2tu">Company</th>
                    <th class="tg-y2tu">Score</th>
                </tr>
                <asp:Repeater runat="server" ID="LeaderboardRepeater">
                    <ItemTemplate>
                        <tr>
                            <td class="tg-3yyr"><%# Eval("m_Rank") %></td>
                            <td class="tg-3yyr"><%# Eval("m_Name") %></td>
                            <td class="tg-3yyr"><%# Eval("m_Company") %></td>
                            <td class="tg-3yyr"><%# Eval("m_Score") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <h1>
            Top Companies
        </h1>
        <div class="tg-wrap" style="margin-bottom:60px;">
            <table id="tg-UoajX" class="tg" style="margin: 0px auto">
                <tr>
                    <th class="tg-r3m7">Rank</th>
                    <th class="tg-y2tu">Company Name</th>
                    <th class="tg-y2tu">Score</th>
                </tr>
                <asp:Repeater runat="server" ID="CompanyLeaderboardRepeater">
                    <ItemTemplate>
                        <tr>
                            <td class="tg-3yyr"><%# Eval("m_CompanyRank") %></td>
                            <td class="tg-3yyr"><%# Eval("m_Name") %></td>
                            <td class="tg-3yyr"><%# Eval("m_CompanyScore") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </div>

    <script type="text/javascript" charset="utf-8">var TgTableSort = window.TgTableSort || function (n, t) { "use strict"; function r(n, t) { for (var e = [], o = n.childNodes, i = 0; i < o.length; ++i) { var u = o[i]; if ("." == t.substring(0, 1)) { var a = t.substring(1); f(u, a) && e.push(u) } else u.nodeName.toLowerCase() == t && e.push(u); var c = r(u, t); e = e.concat(c) } return e } function e(n, t) { var e = [], o = r(n, "tr"); return o.forEach(function (n) { var o = r(n, "td"); t >= 0 && t < o.length && e.push(o[t]) }), e } function o(n) { return n.textContent || n.innerText || "" } function i(n) { return n.innerHTML || "" } function u(n, t) { var r = e(n, t); return r.map(o) } function a(n, t) { var r = e(n, t); return r.map(i) } function c(n) { var t = n.className || ""; return t.match(/\S+/g) || [] } function f(n, t) { return -1 != c(n).indexOf(t) } function s(n, t) { f(n, t) || (n.className += " " + t) } function d(n, t) { if (f(n, t)) { var r = c(n), e = r.indexOf(t); r.splice(e, 1), n.className = r.join(" ") } } function v(n) { d(n, L), d(n, E) } function l(n, t, e) { r(n, "." + E).map(v), r(n, "." + L).map(v), e == T ? s(t, E) : s(t, L) } function g(n) { return function (t, r) { var e = n * t.str.localeCompare(r.str); return 0 == e && (e = t.index - r.index), e } } function h(n) { return function (t, r) { var e = +t.str, o = +r.str; return e == o ? t.index - r.index : n * (e - o) } } function m(n, t, r) { var e = u(n, t), o = e.map(function (n, t) { return { str: n, index: t } }), i = e && -1 == e.map(isNaN).indexOf(!0), a = i ? h(r) : g(r); return o.sort(a), o.map(function (n) { return n.index }) } function p(n, t, r, o) { for (var i = f(o, E) ? N : T, u = m(n, r, i), c = 0; t > c; ++c) { var s = e(n, c), d = a(n, c); s.forEach(function (n, t) { n.innerHTML = d[u[t]] }) } l(n, o, i) } function x(n, t) { var r = t.length; t.forEach(function (t, e) { t.addEventListener("click", function () { p(n, r, e, t) }), s(t, "tg-sort-header") }) } var T = 1, N = -1, E = "tg-sort-asc", L = "tg-sort-desc"; return function (t) { var e = n.getElementById(t), o = r(e, "tr"), i = o.length > 0 ? r(o[0], "td") : []; 0 == i.length && (i = r(o[0], "th")); for (var u = 1; u < o.length; ++u) { var a = r(o[u], "td"); if (a.length != i.length) return } x(e, i) } }(document); document.addEventListener("DOMContentLoaded", function (n) { TgTableSort("tg-UoajZ") });</script>
    <script type="text/javascript" charset="utf-8">var TgTableSort = window.TgTableSort || function (n, t) { "use strict"; function r(n, t) { for (var e = [], o = n.childNodes, i = 0; i < o.length; ++i) { var u = o[i]; if ("." == t.substring(0, 1)) { var a = t.substring(1); f(u, a) && e.push(u) } else u.nodeName.toLowerCase() == t && e.push(u); var c = r(u, t); e = e.concat(c) } return e } function e(n, t) { var e = [], o = r(n, "tr"); return o.forEach(function (n) { var o = r(n, "td"); t >= 0 && t < o.length && e.push(o[t]) }), e } function o(n) { return n.textContent || n.innerText || "" } function i(n) { return n.innerHTML || "" } function u(n, t) { var r = e(n, t); return r.map(o) } function a(n, t) { var r = e(n, t); return r.map(i) } function c(n) { var t = n.className || ""; return t.match(/\S+/g) || [] } function f(n, t) { return -1 != c(n).indexOf(t) } function s(n, t) { f(n, t) || (n.className += " " + t) } function d(n, t) { if (f(n, t)) { var r = c(n), e = r.indexOf(t); r.splice(e, 1), n.className = r.join(" ") } } function v(n) { d(n, L), d(n, E) } function l(n, t, e) { r(n, "." + E).map(v), r(n, "." + L).map(v), e == T ? s(t, E) : s(t, L) } function g(n) { return function (t, r) { var e = n * t.str.localeCompare(r.str); return 0 == e && (e = t.index - r.index), e } } function h(n) { return function (t, r) { var e = +t.str, o = +r.str; return e == o ? t.index - r.index : n * (e - o) } } function m(n, t, r) { var e = u(n, t), o = e.map(function (n, t) { return { str: n, index: t } }), i = e && -1 == e.map(isNaN).indexOf(!0), a = i ? h(r) : g(r); return o.sort(a), o.map(function (n) { return n.index }) } function p(n, t, r, o) { for (var i = f(o, E) ? N : T, u = m(n, r, i), c = 0; t > c; ++c) { var s = e(n, c), d = a(n, c); s.forEach(function (n, t) { n.innerHTML = d[u[t]] }) } l(n, o, i) } function x(n, t) { var r = t.length; t.forEach(function (t, e) { t.addEventListener("click", function () { p(n, r, e, t) }), s(t, "tg-sort-header") }) } var T = 1, N = -1, E = "tg-sort-asc", L = "tg-sort-desc"; return function (t) { var e = n.getElementById(t), o = r(e, "tr"), i = o.length > 0 ? r(o[0], "td") : []; 0 == i.length && (i = r(o[0], "th")); for (var u = 1; u < o.length; ++u) { var a = r(o[u], "td"); if (a.length != i.length) return } x(e, i) } }(document); document.addEventListener("DOMContentLoaded", function (n) { TgTableSort("tg-UoajX") });</script>
    <!--CSS "always stay down" Footer-->
    <div class="footer"></div>

</body>

    <!--Scripts-->
    <script runat="server">
    </script>

    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>
    <script>(function (w, i, d, g, e, t, s) {
    w[d] = w[d] || []; t = i.createElement(g);
    t.async = 1; t.src = e; s = i.getElementsByTagName(g)[0]; s.parentNode.insertBefore(t, s);
})(window, document, '_gscq', 'script', '//widgets.getsitecontrol.com/56417/script.js');
    </script>
</html>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu_Left.ascx.cs" Inherits="Nhom3.uc.Menu_Left" %>
<div id="wp-pos-left">
    <%--chen vao day--%>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</div>
<%--thống kê truy cập--%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">THỐNG KÊ TRUY CẬP</span></h3>

			<div class="wp-modulecontent">
            <p align=center>Số lượt truy cập: <%= Application["DaTruyCap"].ToString() %></p>
            <p align=center>Số người Online: <%= Application["DangTruyCap"].ToString() %></p>
            </div></div></div>
<%--end thống kê truy cập--%>
<%--Giá vàng--%>
<%if (Request.QueryString["page"] != null)
  {%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">Giá vàng</span></h3>

			<div class="wp-modulecontent">
            <p align=center><div id="eGold" class="gold-price fl">&nbsp;</div></p>
           <script type="text/javascript" language="javascript">
               ShowGoldPrice(); // Hien thi gia Vang
                
</script>
            </div></div></div>
           

<%--tỷ giá--%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">TỶ GIÁ</span></h3>

			<div class="wp-modulecontent">
                <table width="100%" border="0" cellspacing="0" cellpadding="2">
        <tr>
          <td width="50%"><strong>USD</strong> </td>
          <td><script language="Javascript">                  document.write(vCosts[0]); //USD </script></td>
        </tr>
        <tr>
          <td><strong>GBP</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[1]); //GBP </script></td>
        </tr>
        <tr>
          <td><strong>HKD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[2]); //HKD </script></td>
        </tr>

        <tr>
          <td><strong>CHF</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[3]); //CHF </script></td>
        </tr>
        <tr>
          <td><strong>JPY</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[4]); //JPY </script></td>
        </tr>
        <tr>
          <td><strong>AUD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[5]); //AUD </script></td>
        </tr>
        <tr>
          <td><strong>CAD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[6]); //CAD </script></td>
        </tr>

        <tr>
          <td><strong>SGD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[7]); //SGD </script></td>
        </tr>
        <tr>
          <td><strong>EUR</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[8]); //EUR </script></td>
        </tr>
        <tr>
          <td><strong>NZD</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[9]); //NZD </script></td>
        </tr>
        <tr>
          <td><strong>Bat Thái Lan</strong></td>
          <td><script language="Javascript">                  document.write(vCosts[10]); //Bat Thái Lan </script></td>
        </tr>
      </table>                

            </div></div></div>
<%--end tỷ giá--%>
 <%}
  else { } %>
<div class="box-white icon-24-megaphone wp-modulecontainer">
    <div class="wp-modulecontainer_inner">
        <h3 class="wp-moduletitle">
            <span class="wp-moduleicon">HỖ TRỢ TRỰC TUYẾN</span></h3>
        <div class="wp-modulecontent">
            <%--hổ trợ trực tuyến--%>
            <p align="center">
                <a href="https://id.zalo.me/account?continue=https%3A%2F%2Fchat.zalo.me%2F" title="đồ chơi HQL" >
                    <img style="width:50px; height:40px" border="0" align="middle" src="https://image.anninhthudo.vn/w600/Uploaded/2020/206/2020_03_19/zalo-4.png" /></a></p>
            <p align="center">
                <a href="https://www.facebook.com/" title="">
                    <img  style="width:50px; height:40px" border="0" align="middle" src="https://cdn.tgdd.vn/hoi-dap/929605/cach-tat-tu-dong-luu-anh-tren-messenger-100.jpg" /></a></p>
            <p align="center">
                <a href="https://www.instagram.com/" title="" >
                    <img  style="width:50px; height:40px" border="0" align="middle" src="https://i.pinimg.com/originals/72/a3/d9/72a3d9408d41335f39e9f014dc35cf44.jpg" /></a></p>
            
            <div class="clearbreak">
            </div>
        </div>
    </div>
</div>




<div class="clearbreak"></div>


</div></div>





<a href="default.aspx?page=cart">
    <%-- giỏ hàng--%>
    <div class="cart_right">
        <p>
            <span id="cart_right_product_count">
                <%=this.item.Count %></span> Sản phẩm
        </p>
        <p>
            <span class="text_bold"><span id="cart_right_total">
                <%=this.tong %></span> đ</span>
        </p>
    </div>
</a>
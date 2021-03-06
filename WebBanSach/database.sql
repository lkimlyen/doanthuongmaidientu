USE master
GO
DROP DATABASE [database]

GO
CREATE DATABASE [database]
GO
USE [database]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[Username] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_admin] ([Username], [Password], [Priority]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[tbl_admin] ([Username], [Password], [Priority]) VALUES (N'kskull41196', N'5560020123aA', 1)
INSERT [dbo].[tbl_admin] ([Username], [Password], [Priority]) VALUES (N'yenyen', N'123456', 1)
/****** Object:  Table [dbo].[tbl_header]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_header](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](255) NULL,
	[phone1] [varchar](50) NULL,
	[tittle] [nvarchar](255) NULL,
	[phone2] [varchar](50) NULL,
	[shortcuticon] [varchar](255) NULL,
 CONSTRAINT [PK_tbl_header] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_header] ON
INSERT [dbo].[tbl_header] ([id], [image], [phone1], [tittle], [phone2], [shortcuticon]) VALUES (1, N'2logo.png', N'0932705096', NULL, N'01669380986', N'images/icon.png')
SET IDENTITY_INSERT [dbo].[tbl_header] OFF
/****** Object:  Table [dbo].[tbl_information]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_information](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenTT] [nvarchar](255) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[GioiThieu] [bit] NULL,
	[alias] [varchar](255) NULL,
 CONSTRAINT [PK_tbl_information] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_information] ON
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (1, N'Giới thiệu về hasasa.vn', N'<p><strong>Hasasa.vn</strong> tự hào là Website chuyên cung cấp sỉ/lẻ các loại hải sản <strong>TƯƠI - NGON - SẠCH&nbsp;</strong>với giá tốt nhất thị trường. Hải sản tại <strong>Hasasa.vn</strong> được nhập trực tiếp tại các nguồn đánh bắt với sự tuyển chọn khắt khe và quy trình vận chuyển, bảo quản chuyên nghiệp đảm bảo hải sản luôn giữ được chất lượng tốt nhất khi giao đến tay khách hàng.&nbsp;</p><p>
	Với mong muốn “<em><strong>Mang hương biển đến mọi nhà</strong></em>”, <strong><em>"Hải Sản Sạch và Tươi"</em></strong>&nbsp;chúng tôi cam kết đem đến cho Quý khách hàng những trải nghiệm mua sắm hải sản tiện ích và chất lượng nhất. Giờ đây, không cần lặn lội đến các vùng biển như Phan Thiết, Phú Quốc, Nha Trang... mới có thể  thưởng thức được những đặc sản tươi ngon từ biển mà&nbsp;chỉ cần vài bước đặt hàng đơn giản trên Website <strong>Hasasa.vn</strong>, Quý khách hàng sẽ nhận ngay những loại hải sản&nbsp;ngon,&nbsp;độc,&nbsp;lạ&nbsp;và bổ dưỡng ngay tại nhà!</p><p>
	Nếu Quý khách là khách sạn nhà hàng, quán ăn hải sản đang tìm kiếm một nhà cung cấp hải sản uy tín chất lượng với giá cả phải chăng hãy liên hệ trực tiếp với&nbsp;chúng tôi để nhận được báo giá tốt nhất. <strong></strong>Chúng tôi<strong> </strong>luôn có những chế độ ưu đãi đặc biệt dành cho các Khách hàng thân thiết cộng tác bền lâu cùng <strong>Hasasa.vn</strong>!</p><p>Không chỉ cung cấp hải sản chất lượng, Website <strong>Hasasa.vn</strong>&nbsp;còn cập nhập những thông tin bổ ích về ẩm thực, dinh dưỡng cũng như công thức chế biến món ngon từ các loại hải sản giúp nhằm giúp&nbsp;bà nội trợ tự tin hơn trong mỗi bữa ăn gia đình. </p><p>
	<strong>Hãy liên hệ với chúng tôi để trải nghiệm dịch vụ mua sắm hải sản tại nhà tiện ích nhất!</strong></p><p><strong>CÔNG TY TNHH TMDV KHỞI NGUỒN&nbsp;</strong></p><ul><li><strong style="background-color: initial;">Hotline:&nbsp;</strong>1900.636.045 -&nbsp; 091.3456.991 - 091.3456.993</li><li><strong style="background-color: initial;">Mail</strong>: <a href="mailto:mailto:hotro@hasasa.vn" style="background-color: initial;">hotro@hasasa.vn</a></li><li><strong style="background-color: initial;">Thời gian làm việc:</strong></li></ul><h5><strong><span style="color: rgb(149, 55, 52);">Từ Thứ 2 đến Chủ Nhật hàng tuần&nbsp;</span></strong></h5><h5><b style="color: rgb(149, 55, 52); background-color: initial;">Buổi&nbsp;Sáng: 8h - 12h</b></h5><h5><b style="color: rgb(149, 55, 52); background-color: initial;">Buổi chiều: 13h - 20h</b></h5>', 1, 1, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (2, N'Hướng dẫn mua hàng', N'<h4></h4><h3></h3><h3>Cách 1: Mua trực tiếp tại cửa hàng</h3><h4>
<ul> 
<li>Hasasa.vn luôn khuyến khích Khách hàng đến trực tiếp cửa hàng&nbsp;21 Tự Lập, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh để cảm nhận trực tiếp chất lượng hải sản&nbsp;của chúng tôi và chọn lựa cho mình những sản phẩm&nbsp;ưng ý nhất.</li></ul><ul> 
<li>Tại cửa hàng, nhân viên của Hasasa.vn luôn tư vấn và phục vụ nhiệt tình ý muốn của Khách hàng.</li></ul><ul> 
<li>Thời gian làm việc:</li></ul></h4><h5><strong>Từ Thứ 2 đến Chủ Nhật hàng tuần </strong></h5><h5><strong>-&nbsp;Buổi Sáng: 8h - 12h</strong></h5><h5><strong>-&nbsp;Buổi chiều: 13h - 20h</strong></h5><h4></h4><h3>Cách 2: Mua hàng qua điện thoại</h3><ul> 
<li>Gọi trực tiếp đường dây nóng 1900 636045 - 091 3456 991 từ 8h – 20h (Cả thứ 7 và Chủ Nhật).</li></ul><ul> 
<li>Nhân viên CSKH của HuongBien.vn sẽ hỗ trợ giúp khách đặt đơn hàng một cách nhanh chóng và tiện lợi nhất.</li></ul><h3>Cách 3: Đặt hàng qua Fanpage&nbsp;</h3><h4><a href="https://www.facebook.com/huongbien.vn">https://www.facebook.com/hasasa.vn</a></h4><ul> 
<li>Khách hàng comment hoặc inbox đặt hàng trực tiếp tại Fanpage HuongBien.vn, Admin của chúng tôi sẽ chuyển ngay đơn đặt hàng đến bộ phận CSKH và liên hệ lại cho Khách hàng một cách nhanh nhất. </li></ul><ul> 
<li>Khi đặt hàng trên Fanpage, Khách hàng vui lòng ghi rõ số điện thoại liên lạc cũng như tên, số lượng sản phẩm cần đặt.</li></ul><ul> 
<li>Ngoài ra, nếu Khách hàng có bất kì thắc mắc nào đừng ngại comment, inbox trực tiếp tại các post của Fanpage, Admin của chúng tôi sẽ hồi đáp và tư vấn kịp thời.</li></ul><h3><span style="color: rgb(12, 12, 12);">Cách 4: Đặt mua trên website Hasasa.vn</span></h3><p><strong></strong></p><p>
	Để tiện lợi cho Quý khách hàng mua sắm thoải mái trên hệ thống website Hasasa<strong>.vn</strong>, chúng tôi có 2 hình thức đặt mua trực tuyến sau:</p><h4>
	<strong><span style="color: rgb(192, 80, 77);">Hình thức 1: Đặt nhanh</span></strong></h4><p>
	<strong>Bước 1 – Chọn sản phẩm</strong></p><p>
	Sau tìm được sản phẩm ưng ý, Quý khách có thể click vào <strong>“Mua”</strong>, Hệ thống sẽ chuyển sang giao diện chi tiết của sản phẩm. Tại đây Quý khách sử dụng các thanh trượt lên xuống để chọn số lượng cần mua và <strong></strong>Click<strong> “Mua ngay”</strong></p><p><strong style="background-color: initial;">Bước 2 – Nhập thông tin</strong></p><p>Hệ thống hiện pop – up yêu cầu Quý khách nhập <strong style="background-color: initial;">tên, nhập số điện thoại hoặc địa chỉ email</strong>.&nbsp;</p><p>
	<strong>Bước 3 – Hoàn tất đơn hàng</strong></p><p>
	Sau khi nhập đầy đủ thông tin và gửi đi, trên đầu Menu của trang thông báo đơn hàng đã hoàn tất. Nhân viên CSKH của <strong>Huongbien.vn</strong> sẽ liên lạc ngay với Quý khách trong thời gian sớm nhất (5 – 60 phút) để xác nhận đơn hàng và tiến hành giao hàng.</p><h4>
	<strong><span style="color: rgb(192, 80, 77);">Hình thức 2: Đặt mua phổ thông</span></strong></h4><p>
	<strong>Bước 1 – Chọn sản phẩm</strong></p><p>
	Sau tìm được sản phẩm ưng ý, Quý khách có thể click vào <strong>“Mua”</strong>, Hệ thống sẽ chuyển sang giao diện chi tiết của sản phẩm.Tại đây Quý khách sử dụng các thanh trượt lên xuống để chọn số lượng cần mua.</p><p><strong style="background-color: initial;">Bước 2 – Click “Cho vào giỏ hàng”</strong></p><p>
	Sau khi sản phẩm được cho vào giỏ hàng, hệ thống sẽ mở ra pop-up như sau:</p><p>
	Nếu Quý khách còn mua chọn mua thêm các sản phẩm khác, hãy để pop – up tự tắt. Thông tin giỏ hàng của Quý khách có thể xem ngay ở menu trang. Tại đây Quý khách có thể click để thanh toán bất kỳ lúc nào có nhu cầu.</p><p>Nếu Quý khách muốn kết thúc việc mua hàng thực hiện tiếp <strong style="background-color: initial;">Bước 4</strong>.</p><p>
	<strong>Bước 3 – Click “Đặt hàng”</strong></p><p>
	Nếu Quý khách đã đăng nhập trước đó, click “<strong>Tiếp tục</strong>”. Nếu chưa, vui lòng đăng nhập tài khoản. <br>
	</p><p><strong style="background-color: initial;">Bước 4 - Điền thông tin thanh toán, vận chuyển</strong></p><p>
	Cập nhật địa chỉ giao hàng của quý khách, có thể bỏ qua bước này nếu địa chỉ giao hàng là địa chỉ Quý khách đã đăng kí trước đó.</p><p>
	Chọn hình thức thanh toán mong muốn.</p><p>
	Điền ghi chú cho đơn hàng nếu có.</p><p>
	Nhấn nút “<strong>Đặt hàng</strong>” để hoàn tất mua hàng.</p><p>
	<strong>Bước 5 – Hoàn tất đơn hàng</strong></p><p>
	Sau khi nhấn nút “<strong>Đặt hàng</strong>”, Quý khách sẽ được chuyển đến trang thông báo đặt mua thành công, đồng thời Quý khách sẽ nhận được e-mail “<strong>Xác nhận đơn hàng</strong>” do <strong>Hasasa.vn</strong> gửi về e-mail đăng nhập của mình.</p><p>
	Click vào “<strong>Chi tiết đơn hàng</strong>” để xem thông tin đơn hàng vừa đặt thành công!</p>', 1, 1, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (3, N'Hướng dẫn thanh toán', N'<p><strong>A. THANH TO&Aacute;N TIỀN MẶT</strong></p>
<p>H&igrave;nh thức thanh to&aacute;n n&agrave;y &aacute;p dụng trong trường hợp sau:</p>
<ul>
<li>Kh&aacute;ch mua h&agrave;ng trực tiếp tại cửa h&agrave;ng ở địa chỉ <strong>21 Tự Lập, Phường 4, Quận T&acirc;n B&igrave;nh, Tp.Hồ Ch&iacute; Minh</strong>.</li>
<li>Kh&aacute;ch muốn thanh to&aacute;n khi nhận h&agrave;ng. Với trường hợp n&agrave;y Qu&yacute; kh&aacute;ch vui l&ograve;ng đọc kĩ h&oacute;a đơn giao h&agrave;ng v&agrave; thanh to&aacute;n đầy đủ gi&aacute; trị đơn h&agrave;ng cho nh&acirc;n vi&ecirc;n giao h&agrave;ng của Hasasa.vn</li>
</ul>
<p><strong>B. THANH TO&Aacute;N CHUYỂN KHOẢN</strong></p>
<ul>
<li>&Aacute;p dụng cho c&aacute;c Kh&aacute;ch h&agrave;ng ở tỉnh xa đặt h&agrave;ng v&agrave; chuyển h&agrave;ng theo nh&agrave; xe hoặc Kh&aacute;ch h&agrave;ng muốn đặt mua hải sản gửi tặng cho bạn bạn b&egrave; người th&acirc;n theo địa chỉ y&ecirc;u cầu.</li>
<li>Qu&yacute; Kh&aacute;ch vui l&ograve;ng chọn một trong những ng&acirc;n h&agrave;ng b&ecirc;n dưới v&agrave;&nbsp;thanh to&aacute;n chuyển khoản tổng tiền h&agrave;ng v&agrave; phụ ph&iacute; ph&aacute;t sinh nếu c&oacute;. Sau khi nhận được th&ocirc;ng b&aacute;o chuyển khoản từ ng&acirc;n h&agrave;ng, Shop sẽ đ&oacute;ng g&oacute;i v&agrave; chuyển h&agrave;ng ngay theo nh&agrave; xe Kh&aacute;ch y&ecirc;u cầu.&nbsp;</li>
</ul>
<p><strong>1.T&Agrave;I KHOẢN VIETCOMBANK</strong></p>
<p>-&nbsp;Chủ T&agrave;i Khoản:&nbsp;NGUYỄN THỊ HỒNG HẠNH</p>
<p>- Số T&agrave;i Khoản:&nbsp;0071000934098</p>
<p>-&nbsp;CHI NH&Aacute;NH B&Igrave;NH T&Acirc;Y - TP.HỒ CH&Iacute; MINH</p>
<p><strong>2.T&Agrave;I KHOẢN N&Ocirc;NG NGHIỆP V&Agrave; PH&Aacute;T TRIỂN N&Ocirc;NG TH&Ocirc;N &ndash; AGRIBANK</strong></p>
<p>- Chủ T&agrave;i Khoản: NGUYỄN THỊ HỒNG HẠNH</p>
<p>-&nbsp;Số T&agrave;i Khoản:&nbsp;1900206267244</p>
<p>-&nbsp;CHI NH&Aacute;NH MẠC THỊ BƯỞI- TP. HỒ CH&Iacute; MINH</p>
<p><strong>3.T&Agrave;I KHOẢN VIETINBANK</strong></p>
<p>- Chủ T&agrave;i Khoản: NGUYỄN THỊ HỒNG HẠNH</p>
<p>- Số T&agrave;i Khoản:&nbsp;711AB5288671</p>
<p>-&nbsp;PH&Ograve;NG GIAO DỊCH T&Ocirc; HIẾN TH&Agrave;NH &ndash; TP. HỒ CH&Iacute; MINH</p>
<p><strong>4.T&Agrave;I KHOẢN&nbsp;&Aacute; CH&Acirc;U &ndash; ACB BANK</strong></p>
<p>- Chủ T&agrave;i Khoản: NGUYỄN THỊ HỒNG HẠNH</p>
<p>- Số T&agrave;i Khoản:&nbsp;188443359</p>
<p>-&nbsp;CHI NH&Aacute;NH H&Ograve;A HƯNG &ndash; TP. HỒ CH&Iacute; MINH</p>
<ul>
<li>Mọi th&ocirc;ng tin thắc mắc v&agrave; khiếu nại Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ tới:<br /><strong>Hotline:&nbsp; 091.3456.991 - 0913.456.993 - 1900.636.045</strong><br /><strong>Mail:</strong><a href="mailto:mailto:hotro@huongbien.vn">hotro@hasasa.vn</a></li>
</ul>', 1, 1, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (4, N'Chính sách giao hàng', N'<h4>
	<strong>1. Đối với khách mua trực tiếp tại cửa hàng</strong></h4><hr>
<p><strong></strong></p><p>
	- 
	<strong>Hasasa.vn</strong>&nbsp;khuyến khích khách hàng đến trực tiếp địa chỉ <strong>21 Tự Lập, Phường 4, Quận Tân Bình</strong> để tùy ý lựa chọn theo sở thích và cảm nhận trực tiếp chất lượng sản phẩm của chúng tôi.</p><p>
	- Bên cạnh sự phục vụ chu đáo và tận tình của đội ngũ nhân viên, 
	<strong>Hasasa.vn</strong> luôn có những chính sách ưu đãi đặc biệt (giảm giá hoặc chiết khấu thêm)&nbsp;đối với Quý khách hàng mua trực tiếp&nbsp;tại cửa hàng!</p><h4><strong><br></strong></h4><h4><strong>2. Chính sách giao hàng tại khu vực Tp.Hồ Chí Minh</strong></h4><hr>
<p><strong></strong></p><p>
	Nhằm phục vụ khách hàng một cách tốt nhất, 
	<strong>Hasasa.vn</strong>&nbsp;thực hiện chính sách giao hàng tận nhà tại khu vực Tp.Hồ Chí Minh theo biểu phí giao hàng như sau:</p><p>- Miễn Phí giao hàng&nbsp;cho các đơn hàng đặt từ 1kg ở các địa chỉ cách Shop &lt;&nbsp;7km&nbsp;</p><p>-&nbsp;Tính Phí giao hàng cho các đơn hàng ở địa chỉ &gt;7km theo biểu phí sau:</p><p><strong>Từ 7 - 9 km: 10,000 vnđ/lần giao</strong></p><p><strong>Từ 9&nbsp;- 10 km: 15,000 vnđ/lần giao</strong></p><p><strong>Từ 10 - 12 km: 20,000 vnđ/lần giao</strong></p><p><strong>Từ 12 - 17 km: 30,000 vnđ/lần giao</strong></p><p>- Đối với các đơn hàng đặt dưới 1kg, Shop thu thêm phụ phí giao hàng 20,000 vnđ + phí giao&nbsp;hàng nếu có.&nbsp;</p><h4><strong><strong style="color: rgb(0, 0, 0); background-color: initial;">3. Chính sách giao hàng ngoại tỉnh</strong></strong></h4><hr>
<p><strong></strong></p><p>
	- Đối với khách hàng ngoại tỉnh đặt mua sản phẩm,<strong> 
	 Hasasa.vn</strong> sẽ liên hệ trực tiếp để thỏa thuận phương thức vận chuyển thỏa đáng nhất và phù hợp nhất theo yêu cầu của khách hàng.</p><p>
	- Cước phí vận chuyển phát sinh do khách hàng thanh toán.</p><p>- Shop thu thêm phụ phí thùng xốp nếu có từ 20,000 - 50,000 vnđ tùy theo thùng lớn nhỏ.&nbsp;</p><p>
	- Khách hàng ngoại tỉnh có thể tham khảo thêm các phương thức vận chuyển sau:</p><ul>
	<li>Vận chuyển bằng đường hàng không</li>	<li>Vận chuyển qua nhà xe</li>	<li>Chuyển phát nhanh qua dịch vụ thứ 3</li></ul>', 1, 1, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (5, N'Chính sách bảo mật thông tin', N'<p>
	Cảm ơn Quý khách đã truy cập vào Website 
	<strong>Hasasa.vn</strong>&nbsp;của <strong> Công ty TNHH – Thương Mại Dịch Vụ Khởi Nguồn</strong>. Chúng tôi tôn trọng và cam kết sẽ bảo mật những thông tin mang tính riêng tư của bạn. Xin vui lòng đọc bản <strong>Chính sách bảo mật</strong> dưới đây để hiểu hơn những cam kết mà chúng tôi thực hiện nhằm tôn trọng và bảo vệ quyền lợi của người truy cập. 
&nbsp;</p><h4>
	<strong>1. Thu thập thông tin cá nhân</strong></h4><hr>
<h4><strong></strong></h4><p>
	-Để sử dụng được các dịch vụ của 
	<em>Hasasa.vn</em>, Quý khách phải đăng ký tài khoản và cung cấp một số thông tin cá nhân. Phần thủ tục đăng k‎ý này nhằm giúp chúng tôi:</p><ul>
	
<li>
	Hỗ trợ khách hàng khi mua sản phẩm.</li>	
<li>
	Giải đáp thắc mắc khách hàng</li>	
<li>
	Cung cấp cho bạn thông tin mới nhất trên Website của chúng tôi</li>	
<li>
	Xem xét và nâng cấp nội dung và giao diện của Website</li>	
<li>
	Nâng cấp tài khoản thành viên.</li>	
<li>
	Thực hiện các bản khảo sát khách hàng</li>	
<li>
	Thực hiện các hoạt động quảng bá liên quan đến các sản phẩm và dịch vụ của Hasasa.vn</li></ul><p>
	 -Để truy cập, đặt hàng và sử dụng các dịch vụ tại 
	<em>Hasasa.vn</em>, Quý khách có thể sẽ được yêu cầu đăng ký với chúng tôi thông tin cá nhân (Email, Họ tên, Ngày tháng năm sinh, Số ĐT liên lạc, địa chỉ&hellip;). Mọi thông tin khai báo phải đảm bảo tính chính xác và hợp pháp. <em>Hasasa.vn</em>&nbsp;không chịu mọi trách nhiệm liên quan đến pháp luật của thông tin khai báo.</p><p>
	- Khi thực hiện giao dịch, khách hàng lựa chọn phương thức thanh toán và cung cấp thêm thông tin cá nhân cho chúng tôi (Địa chỉ liên hệ, người nhận hàng, thông tin về số tài khoản nếu chuyển khoản).</p><p>
	- Chúng tôi cũng có thể thu thập thông tin về danh sách đơn hàng, sản phẩm đã mua, sản phẩm đã xem, số lần viếng thăm, số links (liên kết) bạn click và những thông tin khác liên quan đến việc kết nối đến 
	<em>Hasasa.vn</em>. Chúng tôi cũng thu thập các thông tin mà trình duyệt Web (Browser) Quý khách sử dụng mỗi khi truy cập vào website Huongbien.vn, bao gồm: địa chỉ IP, loại Browser, ngôn ngữ sử dụng, thời gian và những địa chỉ mà Browser truy xuất đến.</p><h4>
	<strong>2. Sử dụng thông tin cá nhân</strong></h4><hr>
<h4><strong></strong></h4><p>
	- 
	<em>Hasasa.vn</em> thu thập và sử dụng thông tin cá nhân Quý khách với mục đích phù hợp và hoàn toàn tuân thủ nội dung của “Chính sách bảo mật” này.</p><p>
	- Khi cần thiết, chúng tôi có thể sử dụng những thông tin này để liên hệ trực tiếp với bạn dưới các hình thức như: gởi thư ngỏ, đơn đặt hàng, mã đơn hàng, chứng nhận khóa học đã tham gia, thư cảm ơn, thông tin về kỹ thuật và bảo mật, Quý khách có thể nhận được thư định kỳ cung cấp thông tin sản phẩm, dịch vụ mới, thông tin về các sự kiện sắp tới, nâng cấp thành viên hoặc thông tin tuyển dụng nếu Quý khách đăng kí nhận email thông báo.</p><h4>
	<strong>3. Chia sẻ thông tin cá nhân</strong></h4><hr>
<h4><strong></strong></h4><p>
	- Ngoại trừ các trường hợp về sử dụng thông tin cá nhân như đã nêu trong chính sách này, chúng tôi cam kết sẽ không tiết lộ thông tin cá nhân bạn ra ngoài.</p><p>
	- Trong một số trường hợp, chúng tôi có thể thuê một đơn vị độc lập để tiến hành các dự án nghiên cứu thị trường và khi đó thông tin của bạn sẽ được cung cấp cho đơn vị này để tiến hành dự án. Bên thứ ba này bị ràng buộc bởi một thỏa thuận về bảo mật mà theo đó họ chỉ được phép sử dụng những thông tin được cung cấp cho mục đích hoàn thành dự án.</p><p>
	- Chúng tôi có thể tiết lộ hoặc cung cấp thông tin cá nhân của bạn trong các trường hợp thật sự cần thiết như sau:</p><ul>
	
<li>Khi có yêu cầu của các cơ quan pháp luật;</li>	
<li>Trong trường hợp mà chúng tôi tin rằng điều đó sẽ giúp chúng tôi bảo vệ quyền lợi chính đáng của mình trước pháp luật;</li>	
<li>Tình huống khẩn cấp và cần thiết để bảo vệ quyền an toàn cá nhân của các thành viên <em>Huongbien.vn</em> khác.</li></ul><h4>
	<strong>4. Truy xuất thông tin cá nhân</strong></h4><hr>
<p><strong> </strong></p><p>
	- Bất cứ thời điểm nào Quý khách cũng có thể truy cập và chỉnh sửa những thông tin cá nhân trong tài khoản cá nhân của mình.</p><h4>
	<strong>5. Bảo mật thông tin cá nhân</strong></h4><hr>
<p><strong></strong></p><p>
- Khi bạn gửi thông tin cá nhân của bạn cho chúng tôi, bạn đã đồng ý với các điều khoản mà chúng tôi đã nêu ở trên, 
	<em>Hasasa.vn</em>&nbsp;cam kết bảo mật thông tin cá nhân của Quý khách bằng mọi cách thức có thể. Chúng tôi sẽ sử dụng nhiều công nghệ bảo mật thông tin khác nhau nhằm bảo vệ thông tin này không bị truy lục, sử dụng hoặc tiết lộ ngoài ý muốn.</p><p>
	- Việc cung cấp sai thông tin cá nhân sẽ không thể thực hiện được việc liên hệ giao hàng hay sử dụng các dịch vụ mà chúng tôi cung cấp.</p><p>
	- Tuy nhiên do hạn chế về mặt kỹ thuật, không một dữ liệu nào có thể được truyền trên đường truyền internet mà có thể được bảo mật 100%. Do vậy, chúng tôi không thể đưa ra một cam kết chắc chắn rằng thông tin Quý khách cung cấp cho chúng tôi sẽ được bảo mật một cách tuyệt đối an toàn, và chúng tôi không thể chịu trách nhiệm trong trường hợp có sự truy cập trái phép thông tin cá nhân của Quý khách như các trường hợp Quý khách tự ý chia sẻ thông tin với người khác&hellip;.</p><p>
	- Vì vậy, 
	<em>Hasasa.vn</em> cũng khuyến cáo Quý khách nên bảo mật các thông tin liên quan đến mật khẩu truy xuất của Quý khách, không nên chia sẻ với bất kỳ người nào khác.</p><p>
	- Nếu sử dụng máy tính chung nhiều người, Quý khách nên đăng xuất, hoặc thoát hết tất cả cửa sổ Website đang mở.</p><h4>
	<strong>6. Sử dụng “Cookie”</strong></h4><hr>
<h4><strong></strong></h4><p>
- 
	<em>Hasasa.vn</em>&nbsp;dùng "Cookie" để giúp cá nhân hóa và nâng cao tối đa hiệu quả sử dụng thời gian trực tuyến của Quý khách.</p><p>
	- Một cookie là một file văn bản được đặt trên đĩa cứng của bạn bởi một máy chủ của trang web. Cookie không được dùng để chạy chương trình hay đưa virus vào máy tính của Quý khách. Cookie được chỉ định vào máy tính của Quý khách và chỉ có thể được đọc bởi một máy chủ trang web trên miền được đưa ra cookie cho Quý khách.</p><p>
	- Một trong những mục đích của Cookie là cung cấp những tiện ích để tiết kiệm thời gian của Quý khách khi truy cập tại website 
	<em>Hasasa.vn</em>&nbsp;hoặc viếng thăm website <em>Hasasa.vn</em>&nbsp;lần nữa mà không cần đăng ký lại thông tin sẵn có.</p><p>
	- Quý khách có thể chấp nhận hoặc từ chối dùng cookie. Hầu hết những Browser tự động chấp nhận cookie, nhưng Quý khách có thể thay đổi những cài đặt để từ chối tất cả những cookie nếu Quý khách thích. Tuy nhiên, nếu Quý khách chọn từ chối cookie, điều đó có thể gây cản trở và ảnh hưởng không tốt đến một số dịch vụ và tính năng phụ thuộc vào cookie tại website 
	<em>Hasasa.vn</em>.</p><h4>
	<strong>7. Quy định về “Spam”</strong></h4><hr>
<h4><strong></strong></h4><p>
- 
	<em>Hasasa.vn</em>&nbsp;thực sự quan ngại đến vấn nạn Spam (thư rác), các email giả mạo danh tín chúng tôi. Do đó, Huongbien.vn khẳng định chỉ email đến Quý khách khi và chỉ khi Quý khách có đăng ký hoặc sử dụng dịch vụ từ hệ thống của chúng tôi.</p><p>
	- 
	<em>Hasasa.vn</em>&nbsp;cam kết không bán, thuê lại hoặc cho thuê email của Quý khách từ bên thứ ba. Nếu Quý khách vô tình nhận được email không theo yêu cầu từ hệ thống chúng tôi do một nguyên nhân ngoài ý muốn, xin vui lòng nhấn vào link từ chối nhận email này kèm theo, hoặc thông báo trực tiếp đến ban quản trị Website.</p><h4>
	<strong>8. Thay đổi về chính sách</strong></h4><hr>
<h4><strong></strong></h4><p>
- Chúng tôi hoàn toàn có thể thay đổi nội dung trong trang này mà không cần phải thông báo trước, để phù hợp với các nhu cầu của 
	<em>Hasasa.vn</em>&nbsp;cũng như nhu cầu và sự phản hồi từ khách hàng nếu có. Khi cập nhật nội dung chính sách này, chúng tôi sẽ chỉnh sửa lại thời gian “Cập nhật lần cuối” bên trên.</p><p>
	- Nội dung “
	<strong>Chính sách bảo mật</strong>” này chỉ áp dụng tại <em>Hasasa.vn</em>, không bao gồm hoặc liên quan đến các bên thứ ba đặt quảng cáo hay có links tại Hasasa.vn. Chúng tôi khuyến khích bạn đọc kỹ chính sách An toàn và Bảo mật của các trang web của bên thứ ba trước khi cung cấp thông tin cá nhân cho các trang web đó. Chúng tôi không chịu trách nhiệm dưới bất kỳ hình thức nào về nội dung và tính pháp lý của trang web thuộc bên thứ ba.</p><p>
	- Vì vậy, bạn đã đồng ý rằng, khi bạn sử dụng website của chúng tôi sau khi chỉnh sửa nghĩa là bạn đã thừa nhận, đồng ý tuân thủ cũng như tin tưởng vào sự chỉnh sửa này. Do đó, chúng tôi đề nghị bạn nên xem trước nội dung trang này trước khi truy cập các nội dung khác trên website cũng như bạn nên đọc và tham khảo kỹ nội dung “
	<strong>Chính sách bảo mật</strong>” của từng website mà bạn đang truy cập.</p><h4>
	<strong>9. Thông tin liên hệ</strong></h4><hr>
<h4><strong></strong></h4><p>
Nếu quý khách muốn truy cập thông tin cá nhân của mình, có khiếu nại về việc vi phạm quyền riêng tư của quý khách hoặc có bất cứ câu hỏi nào về cách thức chúng tôi thu thập hoặc sử dụng thông tin cá nhân của quý khách, vui lòng gửi yêu cầu, khiếu nại hoặc câu hỏi của quý khách tới địa chỉ dưới đây. Chúng tôi sẽ trả lời câu hỏi hoặc khiếu nại của quý khách trong thời gian sớm nhất có thể.</p><p>
	<strong>Địa chỉ văn phòng: </strong></p><p>
	21 Tự Lập, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh
	<br>
	<strong>Tell:</strong> <span style="color: rgb(192, 80, 77);"><strong>1900 636045  </strong></span><br>
	<strong>Mail:</strong>
	<a href="mailto:hotro@huongbien.vn"><span style="color: rgb(192, 80, 77);">hotro@hasasa.vn</span></a></p><p>
	<strong>
	Thời gian làm việc:
	</strong></p>
<table style="border-collapse: collapse;" border="1" cellpadding="5" cellspacing="0">
<tbody>
<tr>
	<th>
		<span style="color: rgb(192, 80, 77);">
		Thứ 2 - Thứ 6
		</span>
	</th>
	<th>
		<span style="color: rgb(192, 80, 77);">
		Thứ 7 - Chủ Nhật
		</span>
	</th>
</tr>
<tr>
	<td>
		Sáng: 8 - 12 giờ
	</td>
	<td>
		Sáng: 8 - 12 giờ
	</td>
</tr>
<tr>
	<td>
		Chiều: 13-23 giờ
	</td>
	<td>
		Chiều: 13-21 giờ
		<br>p
	</td>
</tr>
</tbody>
</table>', 1, 1, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (6, N'Quy trình xử lý khiếu nại', N'<p><strong>Hasasa.vn</strong> sẵn sàng tiếp nhận mọi khiếu nại của khách hàng liên quan đến việc sử dụng dịch vụ và sản phẩm&nbsp;của chúng tôi&nbsp;qua đường dây nóng:&nbsp;<strong><span style="color: rgb(192, 80, 77);">091.3456.991 - 1900.636.045.</span></strong></p><p>- Shop có chính sách bán và giao hàng tận nơi, do đó ngay khi nhận được sản phẩm Quý Khách vui lòng kiểm tra kĩ gói hàng xem có đúng mặt hàng và số lượng mình đã đặt mua hay không. Nếu xảy ra sai sót không đúng mặt hàng và số lượng đã đặt&nbsp;Quý Khách được quyền không nhận hàng và đồng thời&nbsp;không phải trả bất kì chi phí nào.&nbsp;</p><p>- Trường hợp không hài lòng về mẫu mã hoặc quy cách sản phẩm&nbsp;Quý Khách có quyền không nhận hàng&nbsp;tuy nhiên Shop sẽ thu thêm phụ phí giao hàng theo tuyến đường đã giao.&nbsp;</p><p>- Sau khi đã nhận sản phẩm nếu xảy ra các vấn đề liên quan đến chất lượng, Quý Khách có thể&nbsp;có thể chụp hình sản phẩm hoặc giữ lại mẫu sản phẩm và gửi ngay phản hồi đến đường dây nóng&nbsp;cho Shop trong vòng 24h sau khi nhận hàng. Shop sẽ cho nhân viên đến thu hồi và đổi trả ngay sản phẩm mới hoặc hoàn trả lại tiền cho Quý Khách nếu Khách&nbsp;yêu cầu.</p><p>- Trường hợp Quý&nbsp;Khách đã sử dụng hết sản phẩm Shop sẽ bồi thường 30 -&nbsp;50% giá trị đơn hàng tùy trường hợp.</p><p>- Các trường hợp phản hồi trễ sau 24h đồng hồ, không có hình ảnh, mẫu sản phẩm hoặc hình ảnh hay mẫu sản phẩm không chứng minh được sản phẩm kém chất, Shop sẽ không giải quyết đền bù.</p><p><strong>CÁC BƯỚC XỬ LÝ KHIẾU NẠI:</strong></p><p>1. Khách hàng gửi phản hồi.</p><p>2. Nhân viên chăm sóc&nbsp;tiếp nhận, liên hệ nhận hình ảnh và mẫu thử.&nbsp;</p><p>3. Các bộ phận kiểm tra chất lượng thẩm định mẫu, hình ảnh.&nbsp;</p><p>4. Nhân viên chăm sóc liên hệ trả lời khiếu nại và đề xuất phương án giải quyết.&nbsp;</p><p>* Thời gian giải quyết khiếu nại trong thời hạn tối đa là 03 ngày làm việc kể từ khi nhận được khiếu nại của của khách hàng. Trong trường hợp bất khả kháng 2 bên sẽ tự thương lượng.</p>', 1, 0, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (7, N'Trả hàng và hoàn tiền', N'<p><strong>Hasasa.vn</strong> sẵn sàng tiếp nhận mọi khiếu nại của khách hàng liên quan đến việc sử dụng dịch vụ và sản phẩm của chúng tôi qua đường dây nóng: <strong>091.3456.991 - 1900.636.045.</strong></p><p>- Shop có chính sách bán và giao hàng tận nơi, do đó ngay khi nhận được sản phẩm Quý Khách vui lòng kiểm tra kĩ gói hàng xem có đúng mặt hàng và số lượng mình đã đặt mua hay không. Nếu xảy ra sai sót không đúng mặt hàng và số lượng đã đặt Quý Khách được quyền không nhận hàng và đồng thời không phải trả bất kì chi phí nào. </p><p>- Trường hợp không hài lòng về mẫu mã hoặc quy cách sản phẩm Quý Khách có quyền trả hàng tuy nhiên Shop sẽ thu thêm phụ phí giao hàng theo tuyến đường đã giao. </p><p>- Sau khi đã nhận sản phẩm nếu xảy ra các vấn đề liên quan đến chất lượng, Quý Khách có thể có thể chụp hình sản phẩm hoặc giữ lại mẫu sản phẩm và gửi ngay phản hồi đến đường dây nóng cho Shop trong vòng 24h sau khi nhận hàng. Shop sẽ cho nhân viên đến thu hồi và đổi trả ngay sản phẩm mới hoặc hoàn trả lại tiền cho Quý Khách nếu Khách yêu cầu.</p><p>- Trường hợp Quý Khách đã sử dụng hết sản phẩm Shop sẽ bồi thường 30 - 50% giá trị đơn hàng tùy trường hợp.</p><p>- Các trường hợp phản hồi trễ sau 24h đồng hồ, không có hình ảnh, mẫu sản phẩm hoặc hình ảnh hay mẫu sản phẩm không chứng minh được sản phẩm kém chất, Shop sẽ không giải quyết đền bù.</p>', 1, 0, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (8, N'Tuyển dụng', N'<p><strong>Hasasa.vn&nbsp;</strong>l&agrave; website kinh doanh trực tuyến trực thuộc <strong>C&ocirc;ng ty TNHH &ndash; Thương Mại Dịch Vụ Khởi Nguồn</strong> chuy&ecirc;n cung cấp c&aacute;c loại hải sản tươi ngon tại&nbsp;Tp.Hồ Ch&iacute; Minh v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận. Với phương ch&acirc;m &ldquo;<em>Tạo m&ocirc;i trường l&agrave;m việc phẳng cho nh&acirc;n vi&ecirc;n ph&aacute;t huy tối đa năng lực v&agrave; t&iacute;nh s&aacute;ng tạo để ph&aacute;t triển sự nghiệp</em>&rdquo;, <strong>Hasasa.vn</strong>&nbsp;lu&ocirc;n ch&agrave;o đ&oacute;n c&aacute;c bạn trẻ t&acirc;m huyết v&agrave; ham học hỏi v&agrave;o đại gia đ&igrave;nh của m&igrave;nh. Mục ti&ecirc;u của ch&uacute;ng t&ocirc;i l&agrave; hướng đến một m&ocirc;i trường l&agrave;m việc chuy&ecirc;n nghiệp, th&acirc;n thiện, gắn kết b&ecirc;n cạnh đ&oacute; l&agrave; c&aacute;c chế độ, ch&iacute;nh s&aacute;ch hỗ trợ vượt trội d&agrave;nh cho c&aacute;c CBNV c&ocirc;ng ty.</p>
<p><strong>Chế độ đại ngộ tại Hasasa.vn</strong></p>
<ul>
<li>Một m&ocirc;i trường năng động, chuy&ecirc;n nghiệp, đội ngũ nh&acirc;n vi&ecirc;n ho&agrave; đồng lu&ocirc;n sẵn s&agrave;ng hỗ trợ bạn l&uacute;c ho&agrave; nhập cũng như gi&uacute;p bạn vượt qua những kh&oacute; khăn trong c&ocirc;ng việc.</li>
<li>Lương cạnh tranh theo vị tr&iacute; c&ocirc;ng việc, kinh nghiệm v&agrave; kỹ năng.</li>
<li>Đảm bảo an sinh bằng c&aacute;c chế độ bảo hiểm y tế, bảo hiểm x&atilde; hội, bảo hiểm thất nghiệp,&hellip;</li>
<li>C&aacute;c ch&iacute;nh s&aacute;ch thưởng hấp dẫn gi&uacute;p cho những nh&acirc;n vi&ecirc;n c&oacute; th&agrave;nh t&iacute;ch vượt trội được tưởng thưởng xứng đ&aacute;ng.</li>
<li>Ch&iacute;nh s&aacute;ch thưởng cuối năm hấp dẫn (lương th&aacute;ng 13, thưởng hiệu quả kinh doanh).</li>
<li>Cơ hội thăng tiến cho người t&agrave;i, đội ngũ quản l&yacute; trẻ trung đều từ nh&acirc;n vi&ecirc;n thăng tiến l&ecirc;n. V&igrave; thế c&aacute;c cấp quản l&yacute; lu&ocirc;n hiểu v&agrave; quan t&acirc;m đến nh&acirc;n vi&ecirc;n của m&igrave;nh. Sự chia sẻ hướng dẫn c&ocirc;ng việc tận t&igrave;nh từ cấp tr&ecirc;n, gi&uacute;p nh&acirc;n vi&ecirc;n mới h&ograve;a nhập nhanh ch&oacute;ng c&ocirc;ng việc.</li>
<li>Văn h&oacute;a c&ocirc;ng ty mang đến một m&ocirc;i trường gắn b&oacute;, c&aacute;c chương tr&igrave;nh du lịch thường ni&ecirc;n, đ&agrave;o tạo kỹ năng ngo&agrave;i trời, n&acirc;ng cao kiến thức gi&uacute;p nh&acirc;n vi&ecirc;n ph&aacute;t triển to&agrave;n diện.</li>
<li>Tạo điều kiện về thời gian v&agrave; cơ sở vật chất l&agrave;m việc tốt nhất.</li>
</ul>
<h3 style="text-align: center;"><strong>C&aacute;c vị tr&iacute; cần tuyển</strong></h3>
<h4><strong>1. Nh&acirc;n vi&ecirc;n Kế To&aacute;n</strong></h4>
<hr />
<p>&nbsp;</p>
<h4><strong>M&ocirc; tả c&ocirc;ng việc</strong></h4>
<ul>
<li>Kiểm so&aacute;t qui tr&igrave;nh c&aacute;c nghiệp vụ kinh tế của đơn vị, ph&aacute;t hiện c&aacute;c trường hợp thực thi sai qui tr&igrave;nh dẫn đến việc ghi nhận sai hạch to&aacute;n kế to&aacute;n.R&agrave; so&aacute;t, đối chiếu to&agrave;n bộ c&aacute;c nghiệp vụ kế to&aacute;n ph&aacute;t sinh giữa c&aacute;c b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh tổng hợp v&agrave; b&aacute;o c&aacute;o chi tiết theo đối tượng, khoản mục.</li>
<li>Lập b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh theo mục ti&ecirc;u quản trị, qui chế t&agrave;i ch&iacute;nh của đơn vị.</li>
<li>R&agrave; so&aacute;t, đối chiếu hệ thống b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh quản trị với hệ thống b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh theo chuẩn mực kế to&aacute;n Việt Nam.</li>
<li>Ph&acirc;n t&iacute;ch c&aacute;c chỉ ti&ecirc;u đ&aacute;nh gi&aacute; năng lực (KPIs) t&agrave;i ch&iacute;nh theo định hướng của Trưởng ph&ograve;ng T&agrave;i ch&iacute;nh &ndash; Kế to&aacute;n.</li>
<li>Lập b&aacute;o c&aacute;o nhanh (ng&agrave;y/ tuần) cho c&aacute;c khoản mục kế to&aacute;n, t&agrave;i ch&iacute;nh (tiền mặt, phải thu, phải trả).</li>
</ul>
<h4><strong>Kỹ năng</strong></h4>
<ul>
<li>Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh kế to&aacute;n, t&agrave;i ch&iacute;nh hoặc c&aacute;c chuy&ecirc;n ng&agrave;nh c&oacute; li&ecirc;n quan.</li>
<li>Tối thiểu 3 năm kinh nghiệm l&agrave;m kế to&aacute;n tổng hợp, ph&acirc;n t&iacute;ch t&agrave;i ch&iacute;nh tại c&aacute;c doanh nghiệp thương mại, dịch vụ (Thương mại điện tử l&agrave; điểm cộng).</li>
<li>Hiểu r&otilde; nguy&ecirc;n tắc kế to&aacute;n theo chuẩn mực kế to&aacute;n việt nam (VAS).</li>
<li>C&oacute; kỹ năng giao tiếp, khả năng l&agrave;m việc độc lập, l&agrave;m việc nh&oacute;m, kỹ năng xử l&yacute; t&igrave;nh huống, kỹ năng đối chiếu, đối so&aacute;t v&agrave; ph&aacute;t hiện sai s&oacute;t.</li>
<li>C&oacute; tinh thần tr&aacute;ch nhiệm cao, chịu được &aacute;p lực c&ocirc;ng việc (c&oacute; thể l&agrave;m trễ l&agrave; điểm cộng).</li>
<li>Sử dụng th&agrave;nh thạo c&aacute;c phần mềm ứng dụng Microsoft office, phần mềm kế to&aacute;n, hệ thống quản l&yacute; nguổn lực doanh nghiệp &ndash; ERP - S.A.P, F.A.S.T, OpenERP l&agrave; điểm cộng)</li>
</ul>
<h4><strong>2. Nh&acirc;n vi&ecirc;n Sales</strong></h4>
<hr />
<p>&nbsp;</p>
<h4><strong>M&ocirc; tả c&ocirc;ng việc</strong></h4>
<ul>
<li>Đề xuất &yacute; tưởng kế hoạch, ch&iacute;nh s&aacute;ch li&ecirc;n quan đến hoạt động b&aacute;n bu&ocirc;n, ph&aacute;t triển đại l&yacute;.</li>
<li>Thiết lập mối quan hệ với c&aacute;c đối t&aacute;c, đại l&yacute; v&agrave; c&aacute;c mối quan hệ kh&aacute;c phục vụ cho c&ocirc;ng việc b&aacute;n bu&ocirc;n, ph&aacute;t triển đại l&yacute;.</li>
<li>Thống k&ecirc; ph&acirc;n t&iacute;ch số liệu doanh thu chi ph&iacute; v&agrave; đ&aacute;nh gi&aacute; hiệu quả c&aacute;c k&ecirc;nh quảng c&aacute;o.</li>
<li>Nghi&ecirc;n cứu thị trường b&aacute;n bu&ocirc;n tại c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước dưới dự điều đồng hoặc chủ động đề xuất v&agrave; được ph&ecirc; duyệt của ban l&atilde;nh đạo c&ocirc;ng ty.</li>
<li>X&acirc;y dựng v&agrave; quảng b&aacute; thương hiệu, tạo h&igrave;nh ảnh thương hiệu tại địa điểm ph&aacute;t triển đại l&yacute;.</li>
<li>C&ugrave;ng bộ phận Marketing c&ocirc;ng ty đề xuất, l&ecirc;n kế hoạch, tổ chức triển khai, tổng kết đ&aacute;nh gi&aacute; c&aacute;c chương tr&igrave;nh marketing, chăm s&oacute;c kh&aacute;ch h&agrave;ng.
- Thực hiện c&aacute;c c&ocirc;ng việc ph&aacute;t sinh kh&aacute;c dưới sự điều động của ban l&atilde;nh đạo c&ocirc;ng ty.</li>
</ul>
<h4><strong>Kỹ năng</strong></h4>
<ul>
<li>Tốt nghiệp Cao đẳng chuy&ecirc;n ng&agrave;nh QTKD, thương mại&hellip; trở l&ecirc;n.</li>
<li>Kinh nghiệm: L&agrave;m ở mảng ph&aacute;t triển thị trường tối thiểu l&agrave; 1 năm.</li>
<li>Sử dụng th&agrave;nh thạo m&aacute;y t&iacute;nh.</li>
<li>C&oacute; khả năng l&agrave;m việc độc lập, c&oacute; kinh nghiệm, khả năng giao tiếp với kh&aacute;ch h&agrave;ng.</li>
</ul>
<h4><strong>3. Nh&acirc;n vi&ecirc;n Marketing</strong></h4>
<hr />
<p>&nbsp;</p>
<h4><strong>M&ocirc; tả C&ocirc;ng việc</strong></h4>
<ul>
<li>Nghi&ecirc;n cứu thị trường.</li>
<li>Nghi&ecirc;n cứu sản phẩm của c&ocirc;ng ty v&agrave; c&aacute;c đối thủ cạnh tranh kh&aacute;c</li>
<li>Tổ chức c&aacute;c chương tr&igrave;nh khuyến mại.</li>
<li>Đề xuất &yacute; tưởng PR, marketing tr&ecirc;n c&aacute;c k&ecirc;nh truyền th&ocirc;ng v&agrave; kế hoạch marketing cho c&ocirc;ng ty.</li>
<li>Li&ecirc;n hệ quảng c&aacute;o, theo d&otilde;i v&agrave; b&aacute;o c&aacute;o kết quả của c&aacute;c hoạt động marketing, quảng c&aacute;o, truyền th&ocirc;ng theo sự chỉ đạo của quản l&yacute; trực tiếp.</li>
<li>Thống k&ecirc; ph&acirc;n t&iacute;ch số liệu doanh thu chi ph&iacute; v&agrave; đ&aacute;nh gi&aacute; hiệu quả c&aacute;c k&ecirc;nh quảng c&aacute;o khuyến mại&hellip;</li>
</ul>
<h4><strong>Kỹ năng</strong></h4>
<ul>
<li>Kinh nghiệm l&agrave;m việc từ 2 năm trở l&ecirc;n trong lĩnh vực Online Marketing.<br />Kinh nghiệm thực tế, triển khai c&aacute;c chiến dịch marketing tr&ecirc;n c&aacute;c k&ecirc;nh online marketing (SEO, PPC, Email, Facebook, Ad networks, PR).<br />Am hiểu SEO, Google Analytics, Forum Seeding v&agrave; c&aacute;c c&ocirc;ng cụ quảng c&aacute;o trực tuyến c&aacute;c web thương mại điện tử, mạng x&atilde; hội.<br />Khả năng l&agrave;m việc độc lập v&agrave; l&agrave;m việc dưới &aacute;p lực cao.<br />Năng động, s&aacute;ng tạo, nhạy b&eacute;n v&agrave; xử l&yacute; t&igrave;nh huống tốt.</li>
</ul>
<h4><strong>4. Nh&acirc;n vi&ecirc;n Tư vấn &ndash; CSKH</strong></h4>
<hr />
<h4>&nbsp;</h4>
<h4><strong>M&ocirc; tả c&ocirc;ng việc:</strong></h4>
<ul>
<li>Trực số Điện thoại/ Email/ Fanpage tư vấn của C&ocirc;ng ty: Tư vấn cho kh&aacute;ch h&agrave;ng c&aacute;c sản phẩm C&ocirc;ng ty ph&acirc;n phối.</li>
<li>Xử l&yacute; đơn h&agrave;ng khi kh&aacute;ch h&agrave;ng gọi đặt h&agrave;ng qua điện thoại, website.</li>
<li>Phụ tr&aacute;ch Tư vấn/ giải đ&aacute;p c&aacute;c chương tr&igrave;nh b&aacute;n h&agrave;ng của C&ocirc;ng ty tới c&aacute;c nh&agrave; ph&acirc;n phối, đại l&yacute;.</li>
<li>Chăm s&oacute;c kh&aacute;ch h&agrave;ng sau b&aacute;n h&agrave;ng.</li>
<li>L&agrave;m việc với đối t&aacute;c cung cấp dịch vụ chuyển ph&aacute;t kiểm tra t&igrave;nh trạng đơn h&agrave;ng.</li>
<li>Hỗ trợ bộ phận B&aacute;n h&agrave;ng/ Marketing Thực hiện c&aacute;c Event, Chương tr&igrave;nh khuyến m&atilde;i.</li>
</ul>
<h4><strong>Kỹ năng</strong></h4>
<ul>
<li>&Iacute;t nhất 01 năm kinh nghiệm l&agrave;m Tư vấn, b&aacute;n h&agrave;ng qua điện thoại.</li>
<li>Giọng n&oacute;i r&otilde; r&agrave;ng, truyền cảm, dễ nghe.</li>
<li>C&oacute; kỹ năng tư vấn kh&aacute;ch h&agrave;ng, b&aacute;n h&agrave;ng qua điện thoại</li>
<li>Khả năng đ&agrave;m ph&aacute;n v&agrave; giải quyết vấn đề tốt</li>
<li>C&oacute; khả năng sử dụng word, Excel, c&aacute;c c&ocirc;ng cụ tr&ecirc;n internet</li>
<li>Chăm chỉ, cần c&ugrave;, c&oacute; tinh thần phấn đấu v&agrave; vươn l&ecirc;n trong c&ocirc;ng việc.</li>
</ul>
<h4><strong>5. Nh&acirc;n vi&ecirc;n giao h&agrave;ng</strong></h4>
<hr />
<h4>&nbsp;</h4>
<h4><strong>M&ocirc; tả c&ocirc;ng việc:</strong></h4>
<ul>
<li>Giao h&agrave;ng từ cửa h&agrave;ng đến kh&aacute;ch theo lịch sắp xếp.</li>
<li>Kiểm tra h&agrave;ng h&oacute;a trước khi giao.</li>
<li>Giao h&agrave;ng đảm bảo đ&uacute;ng địa chỉ y&ecirc;u cầu tr&ecirc;n phiếu giao h&agrave;ng, bảo quan chứng từ giao nhận v&agrave; thu tiền đầy đủ theo y&ecirc;u cầu tr&ecirc;n h&oacute;a đơn.</li>
<li>Bảo quản sản phẩm trong điều kiện tốt trong thời gian vận chuyển từ l&uacute;c nhận h&agrave;ng cho đến l&uacute;c h&agrave;ng được giao th&agrave;nh c&ocirc;ng tới tay kh&aacute;ch h&agrave;ng.</li>
<li>Mang tiền, phiếu giao h&agrave;ng về nộp lại cho bộ phận Kế to&aacute;n.</li>
<li>Hỗ trợ xếp dỡ h&agrave;ng h&oacute;a khi c&oacute; y&ecirc;u cầu.</li>
<li>Thực hiện c&aacute;c c&ocirc;ng việc kh&aacute;c theo y&ecirc;u cầu của Trưởng Bộ phận.</li>
</ul>
<h4><strong>Kỹ năng:</strong></h4>
<ul>
<li>Tr&igrave;nh độ: Tốt nghiệp THPT trở l&ecirc;n</li>
<li>Th&ocirc;ng thạo đường phố tại khu vực Tp. HCM</li>
<li>Độ tuổi: từ 18 tuổi trở l&ecirc;n</li>
<li>Giao tiếp nhanh nhẹn, th&aacute;i độ cầu thị</li>
<li>Sức khỏe tốt, cẩn thận, trung thực</li>
<li>C&oacute; bằng l&aacute;i xe m&aacute;y</li>
</ul>
<p>&nbsp;</p>
<h4><strong>C&aacute;ch thức ứng tuyển</strong></h4>
<hr />
<h4>&nbsp;</h4>
<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi hồ sơ v&agrave;o Email: <a href="mailto:mailto:tuyendung@huongbien.vn">tuyendung@hasasa.vn</a>. Ti&ecirc;u đề ghi r&otilde;: <strong>Họ T&ecirc;n_Ứng tuyển [Vị tr&iacute;]</strong>. V&iacute; dụ: L&ecirc; Văn A_Ứng tuyển Kế to&aacute;n</p>
<p><em><strong>Hồ sơ ứng tuyển bao gồm:</strong></em></p>
<ol>
<li>Đơn xin dự tuyển</li>
<li>Giấy tờ x&aacute;c định nh&acirc;n th&acirc;n, học vấn v&agrave; c&aacute;c chứng nhận c&oacute; li&ecirc;n quan</li>
<li>Giấy kh&aacute;m sức khỏe.</li>
</ol>
<p>(Lưu &yacute;: Hồ sơ photo kh&ocirc;ng cần c&ocirc;ng chứng, hồ sơ đ&atilde; nộp kh&ocirc;ng ho&agrave;n lại)</p>
<p>Mọi thắc mắc về c&ocirc;ng việc vui l&ograve;ng li&ecirc;n hệ:</p>
<p><strong>C&ocirc;ng ty TNHH &ndash; Thương Mại Dịch Vụ Khởi Nguồn</strong><br /> <strong>Địa chỉ: </strong>21 Tự Lập, Phường 4, Quận T&acirc;n B&igrave;nh, Tp.Hồ Ch&iacute; Minh<br /> <strong>Hotline:</strong> 1900 636045<br /> <strong>Mail</strong>: <a href="mailto:mailto:hotro@huongbien.vn">hotro@hasasa.vn</a></p>
<p><strong>Thời gian l&agrave;m việc:</strong></p>
<table>
<tbody>
<tr><th>Thứ 2 - Thứ 6</th><th>Thứ 7 - Chủ Nhật</th></tr>
<tr>
<td>S&aacute;ng: 8 - 12 giờ</td>
<td>S&aacute;ng: 8 - 12 giờ</td>
</tr>
<tr>
<td>Chiều: 13-23 giờ</td>
<td>Chiều: 13-21 giờ</td>
</tr>
</tbody>
</table>', 1, 0, N'')
INSERT [dbo].[tbl_information] ([id], [TenTT], [NoiDung], [Status], [GioiThieu], [alias]) VALUES (9, N'Liên hệ', N'<p>
	<strong>Công ty TNHH – Thương Mại Dịch Vụ Khởi Nguồn</strong><br>
	<strong>Địa chỉ: </strong>21 Tự Lập, Phường 4, Quận Tân Bình, Tp.Hồ Chí Minh<br>
	<strong>Hotline:</strong> <span style="color: rgb(192, 80, 77);">1900 636045 - 0913.456.991 - 0913.456.993</span><br>
	<strong>Mail</strong>: <span style="color: rgb(192, 80, 77);"><a href="mailto:mailto:hotro@huongbien.vn">hotro@huongbien.vn</a></span></p><p>
	<strong>Thời gian làm việc:</strong></p>
<table style="border-collapse: collapse;" border="1" cellpadding="5" cellspacing="0">
<tbody>
<tr>
	<th>
		<span style="color: rgb(192, 80, 77);">
		Thứ 2 - Thứ 6
		</span>
	</th>
	<th>
		<span style="color: rgb(192, 80, 77);">
		Thứ 7 - Chủ Nhật
		</span>
	</th>
</tr>
<tr>
	<td>
		Sáng: 8 - 12 giờ
	</td>
	<td>
		Sáng: 8 - 12 giờ
	</td>
</tr>
<tr>
	<td>
		Chiều: 13&nbsp;-&nbsp;20 giờ
	</td>
	<td>
		Chiều: 13-20 giờ
		<br>
	</td>
</tr>
</tbody>
</table>', 1, 0, N'')
SET IDENTITY_INSERT [dbo].[tbl_information] OFF
/****** Object:  Table [dbo].[tbl_menu]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[TomTat] [nvarchar](max) NOT NULL,
	[UrlHinh] [nvarchar](255) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[status] [bit] NOT NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[keyword] [nvarchar](255) NULL,
	[alias] [varchar](255) NULL,
 CONSTRAINT [PK_tbl_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_news] ON
INSERT [dbo].[tbl_news] ([id], [TieuDe], [TomTat], [UrlHinh], [NoiDung],[NgayCapNhat], [status], [title], [description], [keyword], [alias]) VALUES (27, N'Hãy thử một lần ''lãng phí'' cuộc đời cho chính bạn', N'<p>
	<span style="font-family: &quot;Noto Serif&quot;, serif; font-size: 18px; font-weight: bold;">&quot;Nơi t&igrave;nh y&ecirc;u ngang qua&quot; ghi lại những x&uacute;c cảm về cuộc sống, th&ocirc;ng qua đ&oacute;, t&aacute;c giả gửi gắm tới bạn đọc th&ocirc;ng điệp h&atilde;y sống cho bản th&acirc;n thay v&igrave; &eacute;p buộc m&igrave;nh l&agrave;m điều ta kh&ocirc;ng muốn.</span></p>
', N'618g_1.jpg', N'<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; float: none; width: 660px; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Nơi t&igrave;nh y&ecirc;u ngang qua</em>&nbsp;l&agrave; cuốn t&ugrave;y b&uacute;t của t&aacute;c giả Choi Kab - soo, t&aacute;c phẩm ghi lại những cảm x&uacute;c, những k&iacute; ức tươi đẹp về cuộc sống, con người ở những nơi t&aacute;c giả đặt ch&acirc;n đến th&ocirc;ng qua ng&ocirc;n từ v&agrave; h&igrave;nh ảnh sống động.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Mỗi nơi &ocirc;ng đặt&nbsp;ch&acirc;n đến đều mang một vẻ đẹp ri&ecirc;ng, để lại cho Choi Kab - soo những kỉ niệm kh&oacute; qu&ecirc;n. Nhưng trong h&agrave;nh tr&igrave;nh chinh phục ấy, nhiều khi &ocirc;ng cảm thấy mệt mỏi, c&ocirc; đơn v&agrave; tự hỏi liệu lựa chọn cuộc sống như vậy c&oacute; đ&uacute;ng kh&ocirc;ng?</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Tuy nhi&ecirc;n, khi phải đối diện với 4 bức tường h&agrave;ng ng&agrave;y &ocirc;ng nhận ra rằng chỉ &quot;đi&quot; mới c&oacute; thể đem lại hạnh ph&uacute;c cho m&igrave;nh.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">&quot;Để c&oacute; thể cố gắng l&agrave;m được điều g&igrave;, bạn phải th&iacute;ch điều đ&oacute; trước đ&atilde;. C&oacute; th&iacute;ch bạn mới vui vẻ, c&oacute; vui vẻ bạn mới y&ecirc;u v&agrave; c&oacute; y&ecirc;u mới c&ugrave;ng nhau đi được đến cuối con đường&quot;.</em></p>
<table align="center" class="picture" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 14px 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-collapse: collapse; border-spacing: 0px; width: 660px; font-family: Helvetica, Arial, sans-serif; color: rgb(85, 85, 85); line-height: 20px; -webkit-font-smoothing: antialiased;">
	<tbody style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pic" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;">
				<img alt="Hay thu mot lan ''lang phi'' cuoc doi cho chinh ban hinh anh 1" height="420" src="http://znews-photo-td.zadn.vn/w660/Uploaded/pgi_cuhbatag2/2017_05_11/g_1.jpg" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; width: 660px; height: auto;" title="Hãy thử một lần ''lãng phí'' cuộc đời cho chính bạn hình ảnh 1" width="500" /></td>
		</tr>
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pCaption caption" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 5px 0px 8px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;">
				Cuốn s&aacute;ch&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Nơi t&igrave;nh y&ecirc;u ngang qua</em>&nbsp;của t&aacute;c giả Choi Kab - soo .</td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Đối với t&aacute;c giả, kh&aacute;m ph&aacute; những địa điểm mới l&agrave; đam m&ecirc;, l&agrave; niềm vui, l&agrave; &yacute; nghĩa lớn nhất của cuộc đời m&igrave;nh. D&ugrave; trải qua mu&ocirc;n v&agrave;n kh&oacute; khăn nhưng c&agrave;ng đi, c&agrave;ng trưởng th&agrave;nh, Choi Kab - soo c&agrave;ng khẳng định điều thực sự c&oacute; &yacute; nghĩa với m&igrave;nh l&agrave; g&igrave;.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Khi đặt ch&acirc;n tới một nơi xa lạ, chắc chắn đ&ocirc;i l&uacute;c bạn sẽ thấy c&ocirc; đơn, nhưng đ&acirc;y lại l&agrave; nơi tốt nhất để ta suy ngẫm v&agrave; l&agrave;m mới lại t&acirc;m hồn m&igrave;nh. Bởi trong cuộc sống, c&oacute; l&uacute;c cần phải bu&ocirc;ng bỏ v&agrave; c&oacute; những điều chỉ ra đi mới l&agrave; tốt nhất.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">&quot;Ngay giời ph&uacute;t n&agrave;y, h&atilde;y thử sống v&igrave; bản th&acirc;n. H&atilde;y thử một lần l&atilde;ng ph&iacute; cuộc đời cho ch&iacute;nh bạn&quot;.</em></p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Nơi t&igrave;nh y&ecirc;u ngang qua</em>&nbsp;kh&ocirc;ng chỉ viết về c&acirc;u chuyện của t&aacute;c giả m&agrave; c&ograve;n l&agrave; c&acirc;u chuyện của những người Choi Kab - soo đ&atilde; gặp trong cuộc kh&aacute;m ph&aacute; của m&igrave;nh.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Trong một chuyến đi, &ocirc;ng đ&atilde; gặp c&ocirc; g&aacute;i bị người y&ecirc;u bỏ rơi v&agrave; ki&ecirc;n nhẫn ngồi lắng nghe c&acirc;u chuyện của c&ocirc; chia sẻ. Nh&igrave;n người con g&aacute;i ấy đau khổ, ai cũng cảm thấy tr&aacute;ch cứ g&atilde;&nbsp;đ&agrave;n &ocirc;ng phụ bạc kia, tr&aacute;ch anh kh&ocirc;ng biết tr&acirc;n trọng&nbsp;m&agrave; bỏ lỡ một người y&ecirc;u anh đến vậy.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">&quot;Nếu bạn c&ocirc; đơn th&igrave; người lắng nghe c&acirc;u chuyện về nỗi c&ocirc; đơn của bạn tốt nhất ch&iacute;nh l&agrave; những người đi du lịch. Bởi người kh&aacute;ch đi du lịch ấy sẽ gi&uacute;p bạn đem nỗi buồn đi thật xa v&agrave; quăng n&oacute; xuống biển hoặc ch&ocirc;n v&agrave;o rừng s&acirc;u&quot;.</em></p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Nh&acirc;n duy&ecirc;n l&agrave; điều g&igrave; đ&oacute; rất kỳ lạ, trong một chuyến du lịch kh&aacute;c, &ocirc;ng v&ocirc; t&igrave;nh gặp người con trai ấy. &Ocirc;ng được nghe c&acirc;u chuyện về cuộc đời anh, l&yacute; do rời xa c&ocirc; g&aacute;i y&ecirc;u m&igrave;nh bằng cả tr&aacute;i tim ch&acirc;n th&agrave;nh. Nếu chỉ nghe c&acirc;u chuyện từ một ph&iacute;a, chắc chắn bạn sẽ dễ d&agrave;ng tr&aacute;ch cứ c&ocirc; g&aacute;i hay ch&agrave;ng trai.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Nhưng một nửa sự thật kh&ocirc;ng thể l&agrave; sự thật,&nbsp;nếu chỉ lắng nghe từ một ph&iacute;a đ&atilde; vội v&agrave;ng đưa ra ph&aacute;n x&eacute;t th&igrave; ta đ&atilde; tự giới hạn hiểu biết của m&igrave;nh với những b&iacute; mật ẩn giấu ph&iacute;a sau.</p>
<table align="center" class="picture" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 14px 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-collapse: collapse; border-spacing: 0px; width: 660px; font-family: Helvetica, Arial, sans-serif; color: rgb(85, 85, 85); line-height: 20px; -webkit-font-smoothing: antialiased;">
	<tbody style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pic" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;">
				<img alt="Hay thu mot lan ''lang phi'' cuoc doi cho chinh ban hinh anh 2" height="353" src="http://znews-photo-td.zadn.vn/w660/Uploaded/pgi_cuhbatag2/2017_05_11/HUY_6920_copy_resize.jpg" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; width: 660px; height: auto;" width="485" /></td>
		</tr>
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pCaption caption" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 5px 0px 8px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;">
				Thanh xu&acirc;n l&agrave; thứ khi&ecirc;n ta đau như thể bị gai đ&acirc;m s&acirc;u v&agrave;o m&oacute;ng tay.&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Ảnh minh họa.</em></td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	B&ecirc;n cạnh đ&oacute;, cuốn s&aacute;ch&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Nơi t&igrave;nh y&ecirc;u ngang qua</em>&nbsp;c&ograve;n l&agrave; cuốn cẩm nang hữu &iacute;ch d&agrave;nh cho tr&aacute;i tim y&ecirc;u th&iacute;ch dịch chuyển. Ở đ&oacute; c&oacute; những bức tranh xu&acirc;n, hạ, thu, đ&ocirc;ng m&agrave; anh ch&agrave;ng, c&ocirc; n&agrave;ng n&agrave;o cũng mong ước được nh&igrave;n thấy trong cuộc h&agrave;nh tr&igrave;nh của m&igrave;nh.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Kh&ocirc;ng c&oacute; những chi tiết giật g&acirc;n, pha h&agrave;nh động nguy hiểm... nhưng c&acirc;u chuyện trong&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Nơi t&igrave;nh y&ecirc;u ngang qua&nbsp;</em>vẫn l&agrave;m tr&aacute;i tim mọi người rung động qua c&aacute;c bức ảnh biết kể chuyện.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	D&ugrave; kh&ocirc;ng được trực tiếp đặt ch&acirc;n tới nơi đ&oacute; nhưng t&aacute;c giả Choi Kab - soo đ&atilde; mang tới cho độc giả những chuyến du lịch bằng ng&ocirc;n từ v&agrave; h&igrave;nh ảnh sống động với v&ocirc; v&agrave;n khoảnh khắc đẹp đến nao l&ograve;ng.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Thậm ch&iacute;, c&oacute; những khoảnh khắc chỉ c&oacute; thể bắt gặp một lần trong đời như cảnh tượng lọt v&agrave;o trong tầm mắt khi đứng giữa đất trời tr&ecirc;n đỉnh n&uacute;i Darangswi, nhạc Schubert nhẹ nh&agrave;ng sớm đầu tuần, những ng&otilde; phố th&acirc;n quen, những b&atilde;i biển l&acirc;u đời... Hay l&agrave; những m&oacute;n ăn, văn h&oacute;a của từng v&ugrave;ng miền được t&aacute;i hiện phong ph&uacute; qua từng trang s&aacute;ch.</p>
',  CAST(0x0000A775010584C6 AS DateTime), 1, N'', N'', N'', N'Hay-thu-mot-lan--lang-phi--cuoc-doi-cho-chinh-ban')
INSERT [dbo].[tbl_news] ([id], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [NgayCapNhat], [status], [title], [description], [keyword], [alias]) VALUES (28, N'Sống thông minh là phải biết buông bỏ', N'<p>
	<span style="font-family: &quot;Noto Serif&quot;, serif; font-size: 18px; font-weight: bold;">Kh&ocirc;ng ai ngăn được miệng lưỡi người đời. Ai cũng c&oacute; thể đối xử tệ với m&igrave;nh, gh&eacute;t m&igrave;nh, chửi m&igrave;nh, điều quan trọng đ&oacute; kh&ocirc;ng phải lỗi của m&igrave;nh.</span></p>
', N'48320170508_080023_1.jpg', N'<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; float: none; width: 660px; font-family: &quot;Noto Serif&quot;, serif;">
	<span style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Cuốn&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">50 ghi ch&eacute;p ngắn từ lịch sử l&acirc;u d&agrave;i của hạnh ph&uacute;c</em>&nbsp;gồm 50 c&acirc;u chuyện được t&aacute;c giả T&acirc;m Phan ghi lại từ những t&acirc;m sự, chia sẻ của ch&iacute;nh m&igrave;nh v&agrave; những người phụ nữ ở xung quanh để từ đ&oacute;, mọi người c&oacute; thể suy ngẫm v&agrave; t&igrave;m được c&acirc;u trả lời về những mối lo, những trăn trở kh&ocirc;ng phải ai cũng d&aacute;m n&oacute;i.</span></p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Muốn hạnh ph&uacute;c phụ nữ n&ecirc;n l&agrave;m g&igrave;? Muốn bảo vệ hạnh ph&uacute;c phụ nữ cần phải h&agrave;nh động như thế n&agrave;o? C&ograve;n c&aacute;c đấng m&agrave;y r&acirc;u th&igrave; sẽ biết cần l&agrave;m g&igrave; cho đối t&aacute;c của m&igrave;nh được hạnh ph&uacute;c hơn&hellip; Đ&oacute; sẽ l&agrave; những chủ đề ch&iacute;nh được đặt ra xuy&ecirc;n suốt cuốn s&aacute;ch. Nội dung T&acirc;m Phan viết tương đối dễ tiếp cận, rất ph&ugrave; hợp với lối sống thời điểm hiện đại.</p>
<table align="center" class="picture" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 14px 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-collapse: collapse; border-spacing: 0px; width: 660px; font-family: Helvetica, Arial, sans-serif; color: rgb(85, 85, 85); line-height: 20px; -webkit-font-smoothing: antialiased;">
	<tbody style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pic" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;">
				<img alt="Song thong minh la phai biet buong bo hinh anh 1" height="750" src="http://znews-photo-td.zadn.vn/w660/Uploaded/neg_iflemly/2017_05_07/20170508_080023_1.jpg" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; width: 660px; height: auto;" width="1000" /></td>
		</tr>
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pCaption caption" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 5px 0px 8px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;">
				Cuốn s&aacute;ch&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">50 ghi ch&eacute;p ngắn từ lịch sử l&acirc;u d&agrave;i của hạnh ph&uacute;c.</em>&nbsp;
				<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; display: inline;">
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Khi những quan niệm sống về t&igrave;nh y&ecirc;u, hạnh ph&uacute;c, thậm ch&iacute; cả về t&igrave;nh dục đang c&oacute; sự chuyển dịch r&otilde; r&agrave;ng. Những vấn đề gai g&oacute;c được t&aacute;c giả nhắc kh&eacute;o rất duy&ecirc;n th&ocirc;ng qua một đoạn thơ ngắn, một danh s&aacute;ch c&aacute;c c&ocirc;ng việc phụ nữ n&ecirc;n l&agrave;m để bảo vệ bản th&acirc;n.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Tuy vậy t&aacute;c giả kh&ocirc;ng chọn cho m&igrave;nh lối viết t&ocirc; hồng cuộc sống m&agrave; rất thẳng thắn nh&igrave;n thẳng v&agrave;o những khuyết điểm trong c&aacute;ch y&ecirc;u v&agrave; đời sống h&ocirc;n nh&acirc;n. T&acirc;m Phan chia sẻ: &ldquo;Thương con n&ecirc;n chịu đựng chồng? Xin lỗi. Thương con th&igrave; chịu đựng con. Thương chồng th&igrave; chịu đựng chồng. Đừng đ&aacute;nh tr&aacute;o kh&aacute;i niệm m&agrave; tội lũ trẻ con. Sau n&agrave;y ch&uacute;ng n&oacute; lớn n&oacute; sẽ bảo: Con li&ecirc;n quan g&igrave; m&agrave; mẹ lấy cớ v&igrave; con m&agrave; phải chịu đựng một &ocirc;ng chồng tồi tệ.&rdquo;</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Hay thậm ch&iacute; l&agrave; những c&acirc;u từ rất mạnh mẽ như: &ldquo;T&ocirc;i kh&ocirc;ng nghĩ g&aacute;i ngoan l&agrave; mất trinh với người n&agrave;o th&igrave; sống với người đ&oacute; cả đời, d&ugrave; người ta đối xử tệ bạc với m&igrave;nh. Vậy th&igrave; t&ocirc;i th&agrave; l&agrave;m g&aacute;i hư khi t&ocirc;i tuyệt vọng kiếm t&igrave;m hạnh ph&uacute;c, t&ocirc;i l&ecirc;n giường với người m&igrave;nh chưa y&ecirc;u bởi v&igrave; t&ocirc;i đ&atilde; thử l&agrave;m g&aacute;i ngoan rồi, t&ocirc;i đ&atilde; l&ecirc;n giường với người t&ocirc;i y&ecirc;u nhưng t&ocirc;i kh&ocirc;ng hạnh ph&uacute;c.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Vậy c&oacute; c&aacute;i g&igrave; kh&aacute;c nhau nếu như c&aacute;i đ&iacute;ch cuối c&ugrave;ng của t&ocirc;i l&agrave; được hạnh ph&uacute;c? Thực tế l&agrave; t&ocirc;i đ&atilde; v&agrave; đang hạnh ph&uacute;c với người đ&atilde; nhanh ch&oacute;ng l&ecirc;n giường cho đến nay đ&atilde; 16 năm. Sau c&aacute;i đ&ecirc;m l&agrave;m g&aacute;i hư đ&oacute;, t&ocirc;i trở về l&agrave;m g&aacute;i ngoan, chỉ y&ecirc;u anh v&agrave; chung thủy với anh m&agrave; th&ocirc;i.&rdquo;</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	T&acirc;m Phan sinh năm 1978, tốt nghiệp Đại học Ngoại ngữ H&agrave; Nội, hiện định cư c&ugrave;ng chồng v&agrave; 2 con tại Australia, l&agrave; t&aacute;c giả của nhiều cuốn s&aacute;ch b&aacute;n chạy với những quan điểm sắc sảo, t&aacute;o bạo đầy c&aacute; t&iacute;nh về cuộc sống, về thế giới phụ nữ như:&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Hồi k&yacute; T&acirc;m Phan</em>,&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Lần đầu l&agrave;m mẹ</em>,&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Sex v&agrave; những thứ kh&aacute;c</em>,&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Đ&agrave;n &ocirc;ng cũng c&oacute; điểm G</em>&nbsp;(đồng t&aacute;c giả).</p>
',  CAST(0x0000A7750105D44D AS DateTime), 1, N'', N'', N'', N'Song-thong-minh-la-phai-biet-buong-bo')
INSERT [dbo].[tbl_news] ([id], [TieuDe], [TomTat], [UrlHinh], [NoiDung],[NgayCapNhat], [status], [title], [description], [keyword], [alias]) VALUES (29, N'''Cô gái Brooklyn'': Cuộc truy hồi gay cấn từ ký ức', N'<p>
	<span style="font-family: &quot;Noto Serif&quot;, serif; font-size: 18px; font-weight: bold;">Trong đời, ai cũng từng giữ ri&ecirc;ng cho m&igrave;nh những b&iacute; mật. V&agrave; b&iacute; mật khiến ta bất ngờ nhất, đ&ocirc;i khi lại tới từ những người bạn đường m&agrave; ta tin cậy nguyện trao hết tất cả y&ecirc;u thương.</span></p>
', N'942WP_20170502_17_03_49_Pro.jpg', N'<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; float: none; width: 660px; font-family: &quot;Noto Serif&quot;, serif;">
	Nếu Marc Levy được mệnh danh l&agrave; &ldquo;&ocirc;ng ho&agrave;ng cuả d&ograve;ng tiểu thuyết l&atilde;ng mạn&rdquo; th&igrave; Guillaume Musso lại tạo được cho m&igrave;nh một chỗ đứng vững chắc trong l&ograve;ng những độc giả y&ecirc;u th&iacute;ch tiểu thuyết mang yếu tố trinh th&aacute;m - h&igrave;nh sự. B&ecirc;n trong những c&acirc;u chuyện t&igrave;nh nồng n&agrave;n của nh&agrave; văn tới từ Antibes lu&ocirc;n ẩn chứa những b&iacute; mật khiến ta t&ograve; m&ograve; kh&ocirc;ng cưỡng nổi.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Nh&acirc;n vật ch&iacute;nh trong những tiểu thuyết của Guillaume Musso, người đang ngất ng&acirc;y trong men say t&igrave;nh &aacute;i, v&ocirc; t&igrave;nh trở th&agrave;nh những th&aacute;m tử bất đắc dĩ. Với nghệ thuật x&acirc;y dựng t&igrave;nh huống đạt tới mức độ đi&ecirc;u luyện, ch&agrave;ng l&atilde;ng tử của nền văn học Ph&aacute;p chưa bao giờ khiến người đọc y&ecirc;u qu&yacute; anh phải thất vọng.&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">C&ocirc; g&aacute;i Brooklyn</em>, tiểu thuyết mới nhất được dịch sang tiếng Việt của Guillaume Musso một lần nữa minh chứng cho điều n&agrave;y.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Mọi chuyện bắt đầu khi nh&agrave; văn chuy&ecirc;n viết tiểu thuyết trinh th&aacute;m Rapha&euml;l Barth&eacute;l&eacute;my quyết định cưới c&ocirc; b&aacute;c sĩ xinh đẹp Anna Backer. Trước khi t&igrave;m thấy t&igrave;nh y&ecirc;u đ&iacute;ch thực của đời m&igrave;nh, ch&agrave;ng văn sĩ đ&atilde; gặp phải một thất bại đau đớn trong t&igrave;nh trường. C&ocirc; bạn g&aacute;i t&agrave;i năng Natalie đ&atilde; quyết định lựa chọn sự nghiệp, bỏ lại Rapha&euml;l v&agrave; cậu con trai chỉ v&agrave;i th&aacute;ng tuổi Th&eacute;o.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Khi quyết định tiến đến h&ocirc;n nh&acirc;n với Anna, Rapha&euml;l đ&atilde; đưa ra một thỏa thuận: giữa hai người sẽ kh&ocirc;ng tồn tại bất cứ b&iacute; mật n&agrave;o. Nhưng vị h&ocirc;n th&ecirc; của anh lại l&agrave; người c&oacute; qu&aacute; nhiều điều để che giấu. Ngo&agrave;i việc cha mẹ của Anna đ&atilde; chết v&igrave; tai nạn lao động v&agrave; bệnh ưng thư th&igrave; Rapha&euml;l chẳng biết g&igrave; về người m&agrave; anh sắp cưới l&agrave;m vợ.</p>
<table align="center" class="picture" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 14px 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-collapse: collapse; border-spacing: 0px; width: 660px; font-family: Helvetica, Arial, sans-serif; color: rgb(85, 85, 85); line-height: 20px; -webkit-font-smoothing: antialiased;">
	<tbody style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pic" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;">
				<img alt="''Co gai Brooklyn'': Cuoc truy hoi gay can tu ky uc hinh anh 1" height="1728" src="http://znews-photo-td.zadn.vn/w660/Uploaded/wopthuo/2017_05_07/WP_20170502_17_03_49_Pro.jpg" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; width: 660px; height: auto;" title="''Cô gái Brooklyn'': Cuộc truy hồi gay cấn từ ký ức hình ảnh 1" width="3072" /></td>
		</tr>
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pCaption caption" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 5px 0px 8px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;">
				Tiểu thuyết&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">C&ocirc; g&aacute;i Brooklyn&nbsp;</em>của Guillaume Musso.&nbsp;</td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	T&igrave;nh cờ nh&igrave;n thấy bức ảnh ba thi thể ch&aacute;y đen trong iPad của Anna, Rapha&euml;l đ&atilde; quyết định truy hỏi tới c&ugrave;ng v&agrave; y&ecirc;u cầu c&ocirc; kể hết những b&iacute; mật trong qu&aacute; khứ. Anna bỏ đi ngay sau cuộc c&atilde;i v&atilde; nảy lửa với h&ocirc;n phu. Rapha&euml;l tới căn hộ của c&ocirc; ở Paris mong t&igrave;m được một lời giải th&iacute;ch nhưng dường như Anna đ&atilde; bốc hơi khỏi mặt đất. Bất ngờ hơn, anh v&ocirc; t&igrave;nh t&igrave;m thấy số tiền 400.000 USD được cất giấu trong nh&agrave;.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Từ một nh&agrave; văn chuy&ecirc;n viết truyện trinh th&aacute;m, Rapha&euml;l Barth&eacute;l&eacute;my quyết định trở th&agrave;nh một th&aacute;m tử thực thụ để điều tra về th&acirc;n thế đ&aacute;ng ngờ của c&ocirc; vợ sắp cưới. May mắn thay, b&ecirc;n cạnh anh lu&ocirc;n c&oacute; &nbsp;cộng sự đắc lực, đ&oacute; l&agrave; vi&ecirc;n cảnh s&aacute;t đ&atilde; nghỉ hưu Marc Caradec.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Bất ngờ nối tiếp bất ngờ, c&aacute;i t&ecirc;n Anna Backer m&agrave; bấy l&acirc;u nay Rapha&euml;l Barth&eacute;l&eacute;my d&ugrave;ng để gọi vị h&ocirc;n phu h&oacute;a ra chỉ l&agrave; một c&aacute;i t&ecirc;n giả. T&ecirc;n thật của c&ocirc; l&agrave; Claire Carlyle. C&ocirc; vốn sinh ra v&agrave; lớn l&ecirc;n ở Mỹ, ch&iacute;n năm trước c&ocirc; tới Ph&aacute;p bằng con đường nhập cư bất hợp ph&aacute;p. Chưa kịp bất ngờ hay o&aacute;n giận, Rapha&euml;l ph&aacute;t hiện ra c&ocirc; vợ sắp cưới đang mang trong m&igrave;nh giọt m&aacute;u của anh.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Nguy hiểm hơn, Claire Carlyle kh&ocirc;ng cố t&igrave;nh bỏ đi m&agrave; c&ocirc; đ&atilde; bị bắt c&oacute;c. Lần theo những may mối &iacute;t ỏi, Rapha&euml;l quyết định tới Mỹ để điều tra. Anh ph&aacute;t hiện ra rằng: v&agrave;o năm 14 tuổi, Claire đ&atilde; bị bắt c&oacute;c v&agrave; giam cầm bởi t&ecirc;n tội phạm đi&ecirc;n rồ Kieffer. C&ocirc; may mắn trốn tho&aacute;t nhưng ba nạn nh&acirc;n kh&aacute;c đ&atilde; chết trong căn nh&agrave; như địa ngục của kẻ bắt c&oacute;c.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Sau khi Claire bị bắt c&oacute;c chỉ v&agrave;i th&aacute;ng, mẹ của c&ocirc; l&agrave; Joyce Carlyle bị ph&aacute;t hiện chết tại nh&agrave; ri&ecirc;ng do sử dụng m&agrave; t&uacute;y qu&aacute; liều trong khi người th&acirc;n đều khẳng định b&agrave; đ&atilde; cai nghiện th&agrave;nh c&ocirc;ng từ nhiều năm trước. Xung quanh c&aacute;i chết của Joyce Carlyle c&oacute; rất nhiều b&iacute; ẩn. Những người quyết t&acirc;m điều tra lại vụ &aacute;n của b&agrave; đều gặp phải rắc rối, c&oacute; người đ&atilde; phải trả gi&aacute; bằng cả mạng sống.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	C&agrave;ng điều tra, Rapha&euml;l c&agrave;ng cảm thấy b&agrave;ng ho&agrave;ng về những b&iacute; mật đang dần s&aacute;ng tỏ dưới &aacute;nh mặt trời. Kh&ocirc;ng chỉ c&oacute; Claire Carlyle, m&agrave; ngay cả người cộng sự đ&aacute;ng tin cậy l&agrave; Marc Caradec cũng c&oacute; những c&acirc;u chuyện kh&ocirc;ng thể kể với Rapha&euml;l. Anh phải l&agrave;m g&igrave; để t&igrave;m ra sự thật khi người m&agrave; anh tin tưởng nhất cũng trở n&ecirc;n đ&aacute;ng ngờ. Những g&igrave; xảy ra ở hiện tại c&oacute; phải l&agrave; c&aacute;i kết tất yếu của một qu&aacute; khứ đau thương v&agrave; đầy uẩn kh&uacute;c.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Kh&ocirc;ng chỉ c&oacute; t&igrave;nh y&ecirc;u v&agrave; những vụ &aacute;n ly kỳ, hấp dẫn khiến người đọc phải giật m&igrave;nh,&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">C&ocirc; g&aacute;i Brooklyn</em>&nbsp;c&ograve;n l&agrave; c&acirc;u chuyện cảm động của t&igrave;nh phụ tử. Thứ t&igrave;nh y&ecirc;u được r&agrave;ng buộc bởi huyết thống mới l&agrave; thứ t&igrave;nh cảm m&atilde;nh liệt nhất. Giống như &aacute;i t&igrave;nh, t&igrave;nh phụ tử đ&ocirc;i khi cũng l&agrave;m người ta m&ugrave; qu&aacute;ng. Chỉ cần mất đi l&yacute; tr&iacute;, trong một ph&uacute;t thi&ecirc;n thần sẽ biến th&agrave;nh quỷ dữ.</p>
', CAST(0x0000A77501060D17 AS DateTime), 1, N'', N'', N'', N'-Co-gai-Brooklyn---Cuoc-truy-hoi-gay-can-tu-ky-uc')
INSERT [dbo].[tbl_news] ([id], [TieuDe], [TomTat], [UrlHinh], [NoiDung], [NgayCapNhat], [status], [title], [description], [keyword], [alias]) VALUES (30, N'''Pháo đài số'' hồi sinh với bản dịch mới', N'<p>
	<span style="font-family: &quot;Noto Serif&quot;, serif; font-size: 18px; font-weight: bold;">C&acirc;u chuyện ly kỳ v&ecirc;̀ m&ocirc;̣t trong những cơ quan tình báo c&oacute; ảnh hưởng nhất tr&ecirc;n thế giới, th&acirc;̣m chí còn quy&ecirc;̀n lực hơn cả CIA &ndash; đ&atilde; &ldquo;hồi sinh&rdquo; với diện mạo v&agrave; bản dịch mới.</span></p>
', N'870Phao_Dai_So_3.jpg', N'<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px 0px 18px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; float: none; width: 660px; font-family: &quot;Noto Serif&quot;, serif;">
	Dan Brown&nbsp;sinh&nbsp;năm 1964 tại New Hampshire, Mỹ. &Ocirc;ng tốt nghiệp trường Cao đẳng&nbsp;Amherst&nbsp;với hai tấm bằng tiếng Anh v&agrave; tiếng T&acirc;y Ban Nha. Năm 1996, Dan Brown bắt đầu chuy&ecirc;n t&acirc;m v&agrave;o nghề viết văn v&agrave; sớm trở th&agrave;nh hiện tượng trong l&agrave;ng tiểu thuyết.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	T&aacute;c phẩm trinh th&aacute;m - lịch sử<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">&nbsp;Mật M&atilde; Da Vinci&nbsp;</em>của &ocirc;ng từng khiến cả thế giới chấn động trước c&aacute;c t&igrave;nh tiết bất ngờ v&agrave; đầy nhạy cảm, trở th&agrave;nh cuốn s&aacute;ch b&aacute;n chạy nhất nh&igrave; l&agrave;ng văn học hiện đại v&agrave; gi&uacute;p nh&agrave; văn người Mỹ n&agrave;y trở th&agrave;nh một trong những t&aacute;c giả ăn kh&aacute;ch mang tầm quốc tế.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Trước khi cho ra mắt t&aacute;c phẩm nổi tiếng&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Mật M&atilde; Da Vinci</em>, Dan Brown đ&atilde; g&acirc;y ch&uacute; &yacute; với&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Ph&aacute;o đ&agrave;i số&nbsp;</em>- c&acirc;u chuyện ly kỳ về một trong những cơ quan t&igrave;nh b&aacute;o c&oacute; ảnh hưởng nhất tr&ecirc;n thế giới, thậm ch&iacute; c&ograve;n quyền lực hơn cả CIA. Trong t&aacute;c phẩm n&agrave;y, &ocirc;ng sẽ dẫn dắt độc giả đi từ c&aacute;c t&ograve;a nh&agrave; chọc trời tại Tokyo cho đến những nh&agrave; thờ cao ch&oacute;t v&oacute;t ở T&acirc;y Ban Nha, qua c&aacute;c h&agrave;nh lang ngầm ở cơ quan ch&iacute;nh phủ quan trọng bậc nhất Hoa Kỳ.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Ph&aacute;o đ&agrave;i số</em>&nbsp;cũng l&agrave; cuộc tranh luận mang t&iacute;nh thời sự về đường bi&ecirc;n giới mong manh giữa an ninh quốc gia v&agrave; quyền bảo mật th&ocirc;ng tin c&aacute; nh&acirc;n của c&ocirc;ng d&acirc;n. Ayn Rand, nữ t&aacute;c giả của cuốn&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Suối nguồn</em>, từng tuy&ecirc;n bố: &ldquo;Văn minh l&agrave; sự tiến triển hướng đến một x&atilde; hội của quyền ri&ecirc;ng tư. Sự tồn tại của lo&agrave;i người hoang dại bấy l&acirc;u nay đều xảy ra trong sự c&ocirc;ng khai, bị kiểm so&aacute;t bởi luật lệ của bộ lạc. Văn minh l&agrave; qu&aacute; tr&igrave;nh giải ph&oacute;ng con người khỏi con người.&rdquo;</p>
<table align="center" class="picture" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 14px 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; font-size: 14px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-collapse: collapse; border-spacing: 0px; width: 660px; font-family: Helvetica, Arial, sans-serif; color: rgb(85, 85, 85); line-height: 20px; -webkit-font-smoothing: antialiased;">
	<tbody style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pic" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;">
				<img alt="''Phao dai so'' hoi sinh voi ban dich moi hinh anh 1" height="667" src="http://znews-photo-td.zadn.vn/w660/Uploaded/neg_iflemly/2017_04_28/Phao_Dai_So_3.jpg" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; max-width: 100%; width: 660px; height: auto;" width="1000" /></td>
		</tr>
		<tr style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">
			<td class="pCaption caption" style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 5px 0px 8px; border-width: 0px; border-style: initial; border-color: initial; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative;">
				T&aacute;c phẩm&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Ph&aacute;o đ&agrave;i số&nbsp;</em>của Dan Brown được ra mắt bản dịch mới tại Việt Nam.</td>
		</tr>
	</tbody>
</table>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Nội dung&nbsp;<em style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;">Ph&aacute;o đ&agrave;i số&nbsp;</em>xoay quanh cơ quan An ninh Quốc gia (NSA), được Tổng thống Truman th&agrave;nh lập năm 1952, đảm nhiệm trọng tr&aacute;ch bảo vệ c&aacute;c li&ecirc;n lạc của ch&iacute;nh phủ Hoa Kỳ v&agrave; thu thập li&ecirc;n lạc của c&aacute;c quốc gia kh&aacute;c. V&agrave; con &aacute;t chủ b&agrave;i được họ che giấu cẩn mật ch&iacute;nh l&agrave; TRANSLTR, cỗ m&aacute;y vạn năng c&oacute; thể bẻ mọi mật m&atilde;. Cho đến khi n&oacute; đụng độ Ph&aacute;o Đ&agrave;i Số b&iacute; ẩn - thuật to&aacute;n xoay v&ograve;ng văn bản sạch c&oacute; thể tạo ra những mật m&atilde; kh&ocirc;ng thể giải m&atilde; v&agrave; khiến TRANSLTR trở n&ecirc;n lỗi thời.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Susan Fletcher, trưởng Ban Mật m&atilde; của NSA, được triệu tập gấp để giải quyết khủng hoảng. C&ocirc; kh&ocirc;ng ngờ rằng bản th&acirc;n sẽ bị cuốn v&agrave;o một cơn lốc những lời dối tr&aacute; v&agrave; b&iacute; mật sống c&ograve;n. Susan buộc phải chiến đấu, kh&ocirc;ng chỉ cho niềm tin v&agrave; an nguy của đất nước, m&agrave; c&ograve;n cho t&iacute;nh mạng của ch&iacute;nh m&igrave;nh c&ugrave;ng người đ&agrave;n &ocirc;ng m&agrave; c&ocirc; y&ecirc;u.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Một cuộc đấu tr&iacute; căng thẳng giữa những bộ &oacute;c t&agrave;i năng nhất Hoa Kỳ. Một cuộc chạy đua nghẹt thở dưới &aacute;nh mặt trời n&oacute;ng bỏng của T&acirc;y Ban Nha. Tất cả đều nỗ lực đến tuyệt vọng để ph&aacute; hủy một s&aacute;ng tạo kh&ocirc;ng thể tưởng tượng nổi của một thi&ecirc;n t&agrave;i tật nguyền... một thuật to&aacute;n sẽ x&oacute;a sổ to&agrave;n bộ ng&agrave;nh t&igrave;nh b&aacute;o v&agrave; đe doạ c&aacute;n c&acirc;n quyền lực của ch&iacute;nh phủ Hoa Kỳ. M&atilde;i m&atilde;i.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Với biệt t&agrave;i x&acirc;y dựng cốt truyện hấp dẫn, l&ocirc;i cuốn c&ugrave;ng c&aacute;ch mi&ecirc;u tả t&acirc;m l&yacute; nh&acirc;n vật sắc sảo, Dan Brown triển khai c&ugrave;ng l&uacute;c nhiều tuyến truyện dưới g&oacute;c nh&igrave;n của c&aacute;c nh&acirc;n vật kh&aacute;c nhau. Tất cả c&aacute;c tuyến truyện đều dần dần quy về một mối, c&acirc;u chuyện được đẩy l&ecirc;n cao tr&agrave;o, thắt n&uacute;t rồi mở n&uacute;t.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Sau mỗi chương, độc giả lại c&agrave;ng t&ograve; m&ograve; muốn biết được nội dung chương kế tiếp v&agrave; sẽ kh&ocirc;ng thể dừng lại cho đến khi ngấu nghiến hết trang cuối c&ugrave;ng. Kh&ocirc;ng chỉ dừng lại ở việc tạo ra những mật m&atilde; đặc biệt v&agrave; h&oacute;a giải n&oacute; một c&aacute;ch t&agrave;i t&igrave;nh, Dan Brown c&ograve;n thật sự dẫn dắt độc giả v&agrave;o một thế giới t&igrave;nh b&aacute;o đầy những thủ đoạn v&agrave; b&iacute; ẩn.</p>
<p style="box-sizing: border-box; text-rendering: geometricPrecision; margin: 18px 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; font-family: &quot;Noto Serif&quot;, serif;">
	Người đọc cũng sẽ c&oacute; cơ hội t&igrave;m hiểu th&ecirc;m về lịch sử ng&agrave;nh khoa học mật m&atilde;: Julius Caesar v&agrave; &ldquo;h&igrave;nh vu&ocirc;ng ho&agrave;n hảo&rdquo; của &ocirc;ng, những cỗ m&aacute;y m&atilde; h&oacute;a được sử trong Thế chiến thứ 2,... Dan Brown xứng đ&aacute;ng được vinh danh l&agrave; &ldquo;&Ocirc;ng vua của những mật m&atilde; vĩ đại&rdquo;.</p>
',  CAST(0x0000A77501065801 AS DateTime), 1, N'', N'', N'', N'-Phao-dai-so--hoi-sinh-voi-ban-dich-moi')
SET IDENTITY_INSERT [dbo].[tbl_news] OFF
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[UrlHinh] [nvarchar](255) NULL,
	[GiaHienTai] [decimal](18, 0) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[MoTaCT] [nvarchar](max) NULL,
	[SoLuongTon] [int] NOT NULL,
	[SLDaBan] [int] NOT NULL,
	[NgayCapNhat] [datetime] NULL,
	[Status] [bit] NOT NULL,
	[IDLoaiSP] [int] NULL,
	[GiaCu] [decimal](18, 0) NULL,
	[KhuyenMai] [int] NULL,
	[SachMoiMoiNgay] [bit] NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[keyword] [nvarchar](255) NULL,
	[alias] [varchar](255) NULL,
	[TrangChu] [bit] NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Product] ON
INSERT [dbo].[tbl_Product] ([ID], [TenSP], [UrlHinh], [GiaHienTai], [MoTa], [MoTaCT], [SoLuongTon], [SLDaBan], [NgayCapNhat], [Status], [IDLoaiSP], [GiaCu], [KhuyenMai], [SachMoiMoiNgay], [title], [description], [keyword], [alias], [TrangChu]) VALUES (22, N'Sketchup & Vray Trong Thiết Kế 1 Kiến Trúc', N'94000001.jpg', CAST(85000 AS Decimal(18, 0)), N'
	Nội dung sách bao gồm 2 phần - 17 bài tập</p>
', N'', 0, 0,  CAST(0x0000A77500E96522 AS DateTime), 1, 14, CAST(85000 AS Decimal(18, 0)), 0, 0, NULL, NULL, NULL, N'Sketchup---Vray-Trong-Thiet-Ke-1-Kien-Truc', 1)
INSERT [dbo].[tbl_Product] ([ID], [TenSP], [UrlHinh], [GiaHienTai], [MoTa], [MoTaCT], [SoLuongTon], [SLDaBan], [NgayCapNhat], [Status], [IDLoaiSP], [GiaCu], [KhuyenMai], [SachMoiMoiNgay], [title], [description], [keyword], [alias], [TrangChu]) VALUES (23, N'3DS Max-Thủ Thuật Render Phối Cảnh kiến Trúc Ban Ngày Và Đêm Với V-Ray 1.50 RC3', N'919000002.jpg', CAST(75000 AS Decimal(18, 0)), N'<p>
	Cuốn s&aacute;ch 3DS Max giới thiệu đến c&aacute;c bạn những kỹ năng sử dụng phần mềm hỗ trợ V-ray mới nhất đang được nhiều người tr&ecirc;n thế giới quan t&acirc;m.&nbsp;</p>
', N'', 0, 0,  CAST(0x0000A77500E9A33C AS DateTime), 1, 14, CAST(0 AS Decimal(18, 0)), 0, 0, N'', N'', N'', N'3DS-Max-Thu-Thuat-Render-Phoi-Canh-kien-Truc-Ban-Ngay-Va-Dem-Voi-V-Ray-1-50-RC3', 1)
INSERT [dbo].[tbl_Product] ([ID], [TenSP], [UrlHinh], [GiaHienTai], [MoTa], [MoTaCT], [SoLuongTon], [SLDaBan], [NgayCapNhat], [Status], [IDLoaiSP], [GiaCu], [KhuyenMai], [SachMoiMoiNgay], [title], [description], [keyword], [alias], [TrangChu]) VALUES (24, N'Tự Học InDesign CS3', N'549000003.jpg', CAST(55000 AS Decimal(18, 0)), N'<p>
	InDesign CS3 l&agrave; chương tr&igrave;nh d&agrave;n trang rất hiện đại v&agrave; tiện dụng d&agrave;nh cho việc tr&igrave;nh b&agrave;y s&aacute;ch, b&aacute;o, tạp ch&iacute;...</p>
', N'', 0, 0,  CAST(0x0000A77500E9D9E1 AS DateTime), 1, 9, CAST(0 AS Decimal(18, 0)), 0, 0, N'', N'', N'', N'Tu-Hoc-InDesign-CS3', 1)
INSERT [dbo].[tbl_Product] ([ID], [TenSP], [UrlHinh], [GiaHienTai], [MoTa], [MoTaCT], [SoLuongTon], [SLDaBan],  [NgayCapNhat], [Status], [IDLoaiSP], [GiaCu], [KhuyenMai], [SachMoiMoiNgay], [title], [description], [keyword], [alias], [TrangChu]) VALUES (25, N'C# Dành Cho Người Tự Học - Tập 1', N'786000009.jpg', CAST(67000 AS Decimal(18, 0)), N'<p>
	S&aacute;ch được chia th&agrave;nh 11 b&agrave;i, từ căn bản đến n&acirc;ng cao k&egrave;m theo CD b&agrave;i tập thực h&agrave;nh nhằm gi&uacute;p bạn học một c&aacute;ch nhanh ch&oacute;ng v&agrave; dễ hiểu như:</p>
', N'', 0, 0, CAST(0x0000A77500EA0A34 AS DateTime), 1, 9, CAST(0 AS Decimal(18, 0)), 0, 0, N'', N'', N'', N'C--Danh-Cho-Nguoi-Tu-Hoc---Tap-1', 1)
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
/****** Object:  Table [dbo].[tbl_product_types]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[tbl_product_types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[alias] [varchar](255) NULL,
	[TrangChu] [bit] NULL,
 CONSTRAINT [PK_tbl_product_types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_product_types] ON
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (9, N'Công nghệ Thông tin', 1, N'Cong-nghe-Thong-tin', 1)
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (10, N'Ngoại ngữ', 1, N'Ngoai-ngu', 1)
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (11, N'Phật Giáo', 1, N'Phat-Giao', 1)
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (12, N'Sách học làm người', 1, N'Sach-hoc-lam-nguoi', 1)
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (13, N'Khoa học Vật lý', 1, N'Khoa-hoc-Vat-ly', 1)
INSERT [dbo].[tbl_product_types] ([ID], [TenLoaiSP], [Status], [alias], [TrangChu]) VALUES (14, N'Khoa học Kỹ thuật', 1, N'Khoa-hoc-Ky-thuat', 1)
SET IDENTITY_INSERT [dbo].[tbl_product_types] OFF
/****** Object:  Table [dbo].[tbl_shop]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenshop] [nvarchar](255) NULL,
	[emailshop] [varchar](255) NULL,
	[phoneshop1] [varchar](255) NULL,
	[thoigianlamviec1] [nvarchar](max) NULL,
	[masodoanhnghiep] [nvarchar](255) NULL,
	[addressshop] [nvarchar](255) NULL,
	[thoigianlamviec2] [nvarchar](max) NULL,
	[phoneshop2] [varchar](50) NULL,
	[longtitude] [varchar](50) NULL,
	[lattitude] [varchar](50) NULL,
	[title] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[keyword] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_shop] ON
INSERT [dbo].[tbl_shop] ([id], [tenshop], [emailshop], [phoneshop1], [thoigianlamviec1], [masodoanhnghiep], [addressshop], [thoigianlamviec2], [phoneshop2], [longtitude], [lattitude], [title], [description], [keyword]) VALUES (1, N'Thủy hải sản cà mau', N'hotro@hasasa.vn', N'1900.636.045 ', N'<strong style="font-size: 16px;font-family:''Open Sans''; color:#fafafa;font-weight:600">Thứ 2-6</strong><br />
Sáng: 08:00-12:00<br />
Chiều: 13:00-21:00
', N' 0312953791 do Sở Kế Hoạch Và Đầu Tư Tp.HCM cấp ngày 02/10/2014', N'21 Tự Lập, P.4, Q Tân Bình, TP.HCM', N'<strong style="font-size: 16px;font-family:''Open Sans''; color:#fafafa;font-weight:600">Thứ 7, Chủ Nhật</strong><br />
Sáng: 08:00-12:00<br />
Chiều: 13:00-21:00
Nghỉ Lễ, Tết
', N'091.3456.991', N'10.7826337', N'106.6936984', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tbl_shop] OFF
/****** Object:  Table [dbo].[Customers]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[birthday] [datetime] NULL,
	[sex] [bit] NULL,
	[idcard] [varchar](9) NULL,
	[image] [varchar](255) NULL,
	[email] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[address] [nvarchar](255) NULL,
	[moblie] [varchar](20) NULL,
	[date_added] [datetime] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[iddh] [int] NULL,
	[idsp] [int] NULL,
	[soluong] [int] NULL,
	[dongia] [decimal](18, 0) NULL,
	[thanhtien] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Orders]    Script Date: 05/16/2017 15:58:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idshop] [varchar](10) NULL,
	[price] [decimal](18, 0) NULL,
	[idkh] [int] NULL,
	[phonenumber] [varchar](20) NULL,
	[thoidiemdathang] [datetime] NULL,
	[tennguoinhan] [nvarchar](255) NULL,
	[diachi] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[status] [bit] NULL,

 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Default [DF_tbl_Product_GiaHienTai1]    Script Date: 05/16/2017 15:58:07 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_GiaHienTai1]  DEFAULT ((0)) FOR [GiaHienTai]
GO
/****** Object:  Default [DF_tbl_Product_SoLuongTon1]    Script Date: 05/16/2017 15:58:07 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_SoLuongTon1]  DEFAULT ((1)) FOR [SoLuongTon]
GO
/****** Object:  Default [DF_tbl_Product_SLDaBan1]    Script Date: 05/16/2017 15:58:07 ******/
ALTER TABLE [dbo].[tbl_Product] ADD  CONSTRAINT [DF_tbl_Product_SLDaBan1]  DEFAULT ((0)) FOR [SLDaBan]
GO


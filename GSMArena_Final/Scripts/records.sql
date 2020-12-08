INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'586e3161-dec4-4d6a-9e2e-d27c0f63b74d', N'admin', N'admin', N'e3c3d5ec-740f-4ca4-b8e0-58bc6596efbf')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'54bb0f10-da7d-4398-bd74-12a2cdd968af', N'mose@gsmarena.com', N'MOSE@GSMARENA.COM', N'mose@gsmarena.com', N'MOSE@GSMARENA.COM', 1, N'AQAAAAEAACcQAAAAEFj11j29vNABfsWtYMt+sL2rXboLY/7Tl6GQZVb4zJ/OF71Imk0O3x0Uz0taZ1s6ZQ==', N'IZALSXMTP3D7ZZAQPFWZIXSR74KLZ7OF', N'f52755ea-119c-462e-bb6a-4d2cf15196f9', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9c6cf854-0395-495d-b19f-87c27faf052d', N'power@gsmarena.com', N'POWER@GSMARENA.COM', N'power@gsmarena.com', N'POWER@GSMARENA.COM', 1, N'AQAAAAEAACcQAAAAEIx+uNdQ0r3G0r62AJOztrKevFPq9RVbaCjH0Yl7QhJ+tWOqKe3dTAuA3G8CRS8PoA==', N'I5LIAYO5KKV3MUCLPGMXW5OM5PJ6AOYJ', N'da12c699-ee1a-4569-a663-82dc7d7c7d1d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9c6cf854-0395-495d-b19f-87c27faf052d', N'586e3161-dec4-4d6a-9e2e-d27c0f63b74d')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (1, N'Samsung')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (2, N'Apple')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (3, N'Xiaomi')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (4, N'Sony')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (5, N'Vivo')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName]) VALUES (6, N'OnePlus')
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Mobiles] ON 
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (1, N'Samsung Galaxy M21s', N'Technology: GSM / HSPA / LTE', N'Announced: 2020, November 06', N'Dimensions: 159.2 x 75.1 x 8.9 mm (6.27 x 2.96 x 0.35 in) Weight: 191 g (6.74 oz) Build: Glass front (Gorilla Glass 3), plastic back, plastic frame SIM Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'Type: Super AMOLED, 420 nits (typ) Size: 6.4 inches, 100.5 cm2 (~84.1% screen-to-body ratio) Resolution: 1080 x 2340 pixels, 19.5:9 ratio (~403 ppi density) Protection: Corning Gorilla Glass 3', N'OS: Android 10, One UI 2.5 Chipset: Exynos 9611 (10nm) CPU: Octa-core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53) GPU: Mali-G72 MP3', N'Card slot: microSDXC (dedicated slot) Internal: 64GB 4GB RAM, 128GB 6GB RAM', N'Triple 64 MP, f/1.8, 26mm (wide), 1/1.72", 0.8µm, PDAF 8 MP, f/2.2, 12mm (ultrawide), 1/4.0", 1.12µm 5 MP, f/2.2, (depth) Features: LED flash, panorama, HDR Video: 4K@30fps, 1080p@30fps, gyro-EIS', N'Single	32 MP, f/2.0, 26mm (wide), 1/2.8", 0.8µm Features: HDR Video: 1080p@30fps', N'Loudspeaker: Yes 3.5mm jack	Yes', N'WLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot Bluetooth: 5.0, A2DP, LE GPS: Yes, with A-GPS, GLONASS, GALILEO, BDS NFC No Radio: FM radio USB: USB Type-C 2.0', N'Sensors	Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass', N'Type: Li-Po 6000 mAh, non-removable Charging: Fast charging 15W', N'Colors: Blue, Black Models: SM-F415F, SM-F415F/DS  Price: About 230 EUR', N'.jpg', 1)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (2, N'Samsung Galaxy A02s', N'Technology: GSM / HSPA / LTE', N'Announced 2020, November 24', N'Build: Glass front, plastic back, plastic frame SIM	Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', N'Type: TFT Size: 6.5 inches, 105.5 cm2 Resolution: 720 x 1520 pixels, 19:9 ratio (~259 ppi density)', N'OS: Android 10 Chipset: Qualcomm SDM450 Snapdragon 450 (14 nm) CPU: Octa-core 1.8 GHz Cortex-A53 GPU: Adreno 506', N'Card slot: microSDXC Internal: 32GB 3GB RAM eMMC 5.1', N'Triple	13 MP, (wide), AF 2 MP, f/2.4, (macro) 2 MP, f/2.4, (depth) Features: LED flash Video: 1080p@30fps', N'Single	5 MP, f/2.2', N'Loudspeaker: Yes 3.5mm jack	Yes', N'WLAN: Yes Bluetooth: Yes GPS: Yes, with A-GPS, GLONASS, GALILEO, BDS NFC: No Radio: Unspecified USB: microUSB 2.0', N'Sensors	Unspecified', N'Type: Li-Po 5000 mAh, non-removable Charging: Fast charging 15W', N'Colors: Black, White Models: SM-A025F, SM-A025F/DS, SM-A025G, SM-A025G/DS, SM-A025M, SM-A025M/DS Price: About 150 EUR', N'.jpg', 1)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (3, N'Apple iPhone 12 Pro Max', N'Technology: GSM / CDMA / HSPA / EVDO / LTE / 5G', N'Announced 2020, October 13', N'Dimensions: 160.8 x 78.1 x 7.4 mm (6.33 x 3.07 x 0.29 in) Weight: 228 g (8.04 oz) Build: Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame SIM: Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China IP68 dust/water resistant (up to 6m for 30 mins) Apple Pay (Visa, MasterCard, AMEX certified)', N'Type: Super Retina XDR OLED, HDR10, 800 nits (typ), 1200 nits (peak) Size: 6.7 inches, 109.8 cm2 (~87.4% screen-to-body ratio) Resolution:	1284 x 2778 pixels, 19.5:9 ratio (~458 ppi density) Protection: Scratch-resistant ceramic glass, oleophobic coating Dolby Vision Wide color gamut True-tone', N'OS: iOS 14.1, upgradable to iOS 14.2 Chipset: Apple A14 Bionic (5 nm) CPU: Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm) GPU: Apple GPU (4-core graphics)', N'Card slot: No Internal: 128GB 6GB RAM, 256GB 6GB RAM, 512GB 6GB RAM NVMe', N'Quad 12 MP, f/1.6, 26mm (wide), 1.7µm, dual pixel PDAF, sensor-shift stabilization (IBIS) 12 MP, f/2.2, 65mm (telephoto), 1/3.4", 1.0µm, PDAF, OIS, 2.5x optical zoom 12 MP, f/2.4, 120˚, 13mm (ultrawide), 1/3.6 inch TOF 3D LiDAR scanner (depth) Features: Dual-LED dual-tone flash, HDR (photo/panorama) Video: 4K@24/30/60fps, 1080p@30/60/120/240fps, 10‑bit HDR, Dolby Vision HDR (up to 60fps), stereo s', N'Dual: 12 MP, f/2.2, 23mm (wide), 1/3.6 inch SL 3D, (depth/biometrics sensor) Features: HDR Video: 4K@24/30/60fps, 1080p@30/60/120fps, gyro-EIS', N'Loudspeaker: Yes, with stereo speakers 3.5mm jack	No', N'WLAN: Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot Bluetooth: 5.0, A2DP, LE GPS	Yes, with A-GPS, GLONASS, GALILEO, QZSS NFC	Yes Radio: No USB	Lightning, USB 2.0', N'Sensors	Face ID, accelerometer, gyro, proximity, compass, barometer Siri natural language commands and dictation', N'Type: Li-Ion 3687 mAh, non-removable (14.13 Wh) Charging: Fast charging 20W, 50% in 30 min (advertised) USB Power Delivery 2.0 Qi magnetic fast wireless charging 15W Stand-by: Up to 20 h (multimedia) Music play: Up to 80 h', N'Colors	Silver, Graphite, Gold, Pacific Blue Models	A2411, A2342, A2410, A2412 SAR EU	0.99 W/kg (head)     0.99 W/kg (body)    Price: ₹129,900 / $1,099.00 / £1,099.00 / €1,217.50 TESTS: Performance	AnTuTu: 638584 (v8)', N'.jpg', 2)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (4, N'Apple Watch Series 6', N'Technology: GSM / HSPA / LTE', N'Announced	2020, September 15', N'Dimensions:	44 x 38 x 10.4 mm (1.73 x 1.50 x 0.41 in) Weight: 47.1 g (1.66 oz) Build: Glass front (Sapphire crystal), ceramic/sapphire crystal back, stainless steel frame SIM: eSIM 50m water resistant ECG certified (region dependent SW application; HW available on all models) ', N'Type: Retina LTPO OLED, 1000 nits (peak) Size: 1.78 inches, 10.0 cm2 (~60.0% screen-to-body ratio) Resolution: 448 x 368 pixels (~326 ppi density) Protection: Sapphire crystal glass Always-on display', N'OS: watchOS 7.0, upgradable to 7.1 Chipset	Apple S6 CPU	Dual-core GPU PowerVR ', N'Card slot: No Internal: 32GB 1GB RAM', N'CAMERA: No', N'CAMERA: No', N'Loudspeaker: Yes 3.5mm jack	No', N'WLAN: Wi-Fi 802.11 b/g/n, dual-band Bluetooth: 5.0, A2DP, LE GPS	Yes, with A-GPS, GLONASS, GALILEO, QZSS NFC: Yes Radio: No USB: No', N'Sensors	Accelerometer, gyro, heart rate (2nd gen), barometer, always-on altimeter, compass, SpO2, VO2max Natural language commands and dictation (talking mode)', N'Type: Li-Ion 303.8 mAh (1.17 Wh), non-removable Charging: Wireless charging Stand-by: Up to 18 h (mixed usage)', N'Colors: Silver, Graphite (DLC), Gold (PVD) Models: A2293, A2294, A2375, A2376 Price: About 710 EUR', N'.jpg', 2)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (5, N'Xiaomi Redmi Note 9 5G', N'Technology: GSM / CDMA / HSPA / EVDO / LTE / 5G', N'Announced 2020, November 26', N'Dimensions: 162 x 77.3 x 9.2 mm (6.38 x 3.04 x 0.36 in) Weight: 199 g (7.02 oz) Build: Glass front (Gorilla Glass 5), plastic back SIM: Dual SIM (Nano-SIM, dual stand-by) Water-repellent coating', N'Type: IPS LCD, 450 nits (typ) Size: 6.53 inches, 104.7 cm2 (~83.6% screen-to-body ratio) Resolution: 1080 x 2340 pixels, 19.5:9 ratio (~395 ppi density) Protection: Corning Gorilla Glass 5', N'OS: Android 10, MIUI 12 Chipset	MediaTek Dimensity 800U 5G (7 nm) CPU: Octa-core (2x2.4 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55) GPU: Mali-G57 MC3', N'Card slot: microSDXC (dedicated slot) Internal: 128GB 6GB RAM, 128GB 8GB RAM, 256GB 8GB RAM UFS 2.2', N'Triple: 48 MP, f/1.8, 26mm (wide), 1/2.0", 0.8µm, PDAF 8 MP, f/2.2, 118˚ (ultrawide), 1/4.0", 1.12µm 2 MP, f/2.4, (macro) Features: LED flash, HDR, panorama Video: 4K@30fps, 1080p@30/60fps', N'Single: 13 MP, f/2.3, 29mm (standard), 1/3.1", 1.12µm Video: 1080p@30fps', N'Loudspeaker	Yes, with stereo speakers 3.5mm jack Yes 24-bit/192kHz audio', N'WLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot Bluetooth: 5.1, A2DP, LE GPS	Yes, with A-GPS, GLONASS, GALILEO, BDS, QZSS NFC: No Infrared port: Yes Radio: Unspecified USB: USB Type-C 2.0', N'Sensors	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass', N'Type: Li-Po 5000 mAh, non-removable Charging: Fast charging 18W', N'Colors: Gray, Green, Violet Models: M2007J22C Price: $289.99', N'.jpg', 3)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (6, N'Sony Xperia 10 Plus', N'Technology: GSM / HSPA / LTE', N'Announced 2019, February 25', N'Dimensions: 167 x 73 x 8.3 mm (6.57 x 2.87 x 0.33 in) Weight: 180 g (6.35 oz) Build: Glass front (Gorilla Glass 5), plastic back, plastic frame SIM: Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)', N'Type: IPS LCD Size: 6.5 inches, 98.7 cm2 (~81.0% screen-to-body ratio) Resolution: 1080 x 2520 pixels, 21:9 ratio (~422 ppi density) Protection: Corning Gorilla Glass 5', N'OS: Android 9.0 (Pie) Chipset	Qualcomm SDM636 Snapdragon 636 (14 nm) CPU: Octa-core (4x1.8 GHz Kryo 260 Gold & 4x1.6 GHz Kryo 260 Silver) GPU: Adreno 509', N'Card slot microSDXC (uses shared SIM slot) Internal: 64GB 4GB RAM, 64GB 6GB RAM eMMC 5.1', N'Dual: 12 MP, f/1.8, 27mm (wide), 1/2.8", 1.25µm, PDAF 8 MP, f/2.4, 53mm (telephoto), 1/4.0", 1.12µm, PDAF, 2x optical zoom Features: LED flash, HDR, panorama Video: 4K@30fps, 1080p@30fps', N'Single 8 MP, f/2.0, 24mm (wide), 1/4", 1.12µm Features: HDR Video: 1080p@30fps', N'Loudspeaker: Yes 3.5mm jack: Yes 24-bit/192kHz audio', N'WLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot Bluetooth: 5.0, A2DP, LE, aptX HD GPS	Yes, with A-GPS, GLONASS NFC: Yes Radio: FM radio USB: USB Type-C 2.0; USB On-The-Go', N'Sensors	Fingerprint (side-mounted), accelerometer, proximity, compass', N'Type: Li-Ion 3000 mAh, non-removable Charging: Fast charging 18W Quick Charge 3.0 USB Power Delivery', N'Colors: Black, Navy, Silver, Gold Models: I3213, I4213, I4293, I3223 Price: About 560 EUR TESTS: Performance	AnTuTu: 120573 (v7), 147163 (v8) GeekBench: 4780 (v4.4), 1238 (v5.1) GFXBench: 5fps (ES 3.1 onscreen)', N'.jpg', 4)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (7, N'OnePlus Nord N10 5G', N'Technology: GSM / CDMA / HSPA / LTE / 5G', N'Announced 2020, October 26', N'Dimensions: 163 x 74.7 x 9 mm (6.42 x 2.94 x 0.35 in) Weight: 190 g (6.70 oz) Build: Glass front, plastic frame SIM: Dual SIM (Nano-SIM, dual stand-by)', N'Type: IPS LCD, 90Hz Size: 6.49 inches, 101.7 cm2 (~83.5% screen-to-body ratio) Resolution: 1080 x 2400 pixels, 20:9 ratio (~406 ppi density) Protection: Corning Gorilla Glass 3', N'OS: Android 10, OxygenOS 10.5 Chipset: Qualcomm SM6350 Snapdragon 690 5G (8 nm) CPU: Octa-core (2x2.0 GHz Kryo 560 Gold & 6x1.7 GHz Kryo 560 Silver) GPU: Adreno 619L', N'Card slot: microSDXC Internal: 128GB 6GB RAM UFS 2.1', N'Quad: 64 MP, f/1.8, (wide), 1/1.72", 0.8µm, PDAF 8 MP, f/2.3, 119˚ (ultrawide) 2 MP, f/2.4, (depth) 2 MP, f/2.4, (macro) Features: LED flash, HDR, panorama Video: 4K@30fps, 1080p@30/60/120fps; gyro-EIS', N'Single: 16 MP, f/2.1 Features: HDR Video: 1080p@30/60fps, gyro-EIS', N'Loudspeaker	Yes, with dual speakers 3.5mm jack Yes', N'WLAN: Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot Bluetooth: 5.1, A2DP, LE GPS	Yes, with dual-band A-GPS, GLONASS, GALILEO, BDS NFC: Yes Radio: Unspecified USB	USB Type-C 2.0, USB On-The-Go', N'Sensors	Fingerprint (rear-mounted), accelerometer, gyro, proximity, compass', N'Type: Li-Po 4300 mAh, non-removable Charging: Fast charging 30W', N'Colors: Midnight Ice Price: $299.00 / £489.00 TESTS: Performance	AnTuTu: 279579 (v8) GeekBench: 1848 (v5.1)', N'.jpg', 6)
GO
INSERT [dbo].[Mobiles] ([MobileID], [MobileName], [Network], [Launch], [Body], [Display], [Platform], [Memory], [MainCamera], [SelfieCamera], [Sound], [Comms], [Features], [Battery], [Misc], [Extension], [CompanyID]) VALUES (8, N'vivo Y52s', N'Technology: GSM / CDMA / HSPA / LTE / 5G', N'Announced 2020, December 07', N'Dimensions:	164.2 x 75.4 x 8.4 mm (6.46 x 2.97 x 0.33 in) Weight: 185.5 g (6.56 oz) SIM	Dual SIM (Nano-SIM, dual stand-by)', N'Type: IPS LCD, 90Hz, 460 nits (typ) Size: 6.58 inches, 104.5 cm2 (~84.4% screen-to-body ratio) Resolution: 1080 x 2400 pixels, 20:9 ratio (~400 ppi density)', N'OS: Android 10, Funtouch 10.5 Chipset	MediaTek MT6853 Dimensity 720 5G (7 nm) CPU	Octa-core (2x2.0 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55) GPU	Mali-G57 MC3', N'Card slot: No Internal: 128GB 6GB RAM, 128GB 8GB RAM UFS 2.1', N'Dual: 48 MP, f/1.8, 25mm (wide), 1/2.0", 0.8µm, PDAF 2 MP, f/2.4, (depth) Features: LED flash, HDR, panorama Video: 4K@30fps, 1080p@30fps', N'Single: 8 MP, f/2.0, (wide) Features: HDR Video: 1080p@30fps', N'Loudspeaker: Yes 3.5mm jack: Yes', N'WLAN: Yes Bluetooth: Yes GPS: Yes, with A-GPS, GLONASS, BDS, GALILEO NFC: No Radio: No USB	USB Type-C 2.0, USB On-The-Go', N'Sensors	Fingerprint (side-mounted), accelerometer, proximity, compass ', N'Type: Li-Po 5000 mAh, non-removable Charging: Fast charging 18W', N'Colors: Gray Coral, Aurora Models: V2057A Price: About 200 EUR', N'.jpg', 5)
GO
SET IDENTITY_INSERT [dbo].[Mobiles] OFF
GO
SET IDENTITY_INSERT [dbo].[MobileReviews] ON 
GO
INSERT [dbo].[MobileReviews] ([ReviewID], [Name], [Rating], [ReviewText], [MobileID], [ReviewDate]) VALUES (1, N'Aman', 2, N'Very Nice Mobile', 1, CAST(N'2020-12-03T15:06:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[MobileReviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 
GO
INSERT [dbo].[Blogs] ([BlogID], [Title], [BlogText], [BlogDate], [Extension]) VALUES (1, N'Samsung Galaxy F62 enters mass production, should arrive in Q1 2021', N'Samsung introduced the Galaxy F41 in October as the first member of its new Galaxy F series, and it is now working on the Galaxy F62, which was spotted on Geekbench last week. There''s no official word from Samsung about it yet, but a new report claims the F62 has entered production at Samsung''s facility in Greater Noida in India. It will be one of the slimmest smartphones from Samsung and will likely arrive in Q1 2021.
', CAST(N'2020-12-08T14:26:00.0000000' AS DateTime2), N'.jpg')
GO
INSERT [dbo].[Blogs] ([BlogID], [Title], [BlogText], [BlogDate], [Extension]) VALUES (2, N'Motorola Moto G9 Power arrives in India, sales begin December 15', N'Motorola introduced the Moto G 5G and Moto G9 Power earlier last month. The Moto G 5G arrived in India last week, and today the Moto G9 Power joins it.

The Moto G9 Power comes in a single 4GB/64GB configuration in India priced at INR11,999 ($160/€135). It has two color options - Electric Violet and Metallic Sage - and will go on sale exclusively through Flipkart starting December 15.', CAST(N'2020-12-08T14:27:00.0000000' AS DateTime2), N'.jpg')
GO
INSERT [dbo].[Blogs] ([BlogID], [Title], [BlogText], [BlogDate], [Extension]) VALUES (3, N'Samsung Galaxy S21 family won''t have a charger or earphones in the box, certification confirms', N'Remember when Apple removed the 3.5mm headphone jack and a lot of Android phone makers mocked it for the decision, only to follow suit within a few years, Samsung included? Well, here we go again.

It''s already been rumored that Samsung was thinking about shipping the upcoming Galaxy S21, Galaxy S21+, and Galaxy S21 Ultra without a charger or earphones in the box, but when we heard this back in October apparently a final decision had yet to be made.

In the meantime, the trio has been certified for sale in Brazil by Anatel, the country''s regulatory agency, and guess what? There''s an explicit notice saying the phones will not be marketed with a charger or headphones. The screengrab below shows the relevant text in Portuguese.', CAST(N'2020-12-05T14:28:00.0000000' AS DateTime2), N'.jpg')
GO
INSERT [dbo].[Blogs] ([BlogID], [Title], [BlogText], [BlogDate], [Extension]) VALUES (4, N'Oppo Find X3 Pro leak reveals most important details', N'Oppo has already announced that its next flagship smartphone, coming out in the first three months of 2021, will be powered by the newly unveiled Snapdragon 888 chipset, but today a new leak gives us a few more details about the device.

The Find X3 Pro, which is what we assume it will be called, is codenamed Fussi, according to Evan Blass, better known as @evleaks. The device will have a 6.7-inch 1440x3216 touchscreen with 1.07 billion color support and adaptive dynamic frame rate - from 10 Hz all the way up to 120 Hz.', CAST(N'2020-12-04T14:28:00.0000000' AS DateTime2), N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO

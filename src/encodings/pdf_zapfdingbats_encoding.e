indexing

	description: "Zapf Dingbats Character Encodings."
	author: "Paul G. Crismer"
	licence: "Release under the Eiffel Forum licence.  See file 'forum.txt'."
	
class

	PDF_ZAPFDINGBATS_ENCODING
	
inherit
	
	PDF_CHARACTER_ENCODING
	
feature -- Access

	name : PDF_NAME is
		once
			!!Result.make ("ZapfDingbatsEncoding")
		end
		
		
feature {NONE} -- Implementation

	name_to_code : DS_HASH_TABLE[INTEGER, STRING] is
		once
			!!Result.make (256)
			name_to_code.put (33, "a1")	 -- '.'
			name_to_code.put (34, "a2")	 -- '.'
			name_to_code.put (36, "a3")	 -- '.'
			name_to_code.put (37, "a4")	 -- ''
			name_to_code.put (38, "a5")	 -- '.'
			name_to_code.put (61, "a6")	 -- '.'
			name_to_code.put (62, "a7")	 -- '.'
			name_to_code.put (63, "a8")	 -- '.'
			name_to_code.put (64, "a9")	 -- '.'
			name_to_code.put (65, "a10")	 -- '.'
			name_to_code.put (42, "a11")	 -- '.'
			name_to_code.put (43, "a12")	 -- '.'
			name_to_code.put (44, "a13")	 -- '.'
			name_to_code.put (45, "a14")	 -- '.'
			name_to_code.put (46, "a15")	 -- '.'
			name_to_code.put (47, "a16")	 -- '.'
			name_to_code.put (49, "a17")	 -- '.'
			name_to_code.put (50, "a18")	 -- '.'
			name_to_code.put (51, "a19")	 -- ''
			name_to_code.put (52, "a20")	 -- '.'
			name_to_code.put (53, "a21")	 -- '.'
			name_to_code.put (54, "a22")	 -- '.'
			name_to_code.put (55, "a23")	 -- '.'
			name_to_code.put (56, "a24")	 -- '.'
			name_to_code.put (57, "a25")	 -- '.'
			name_to_code.put (58, "a26")	 -- '.'
			name_to_code.put (59, "a27")	 -- '.'
			name_to_code.put (60, "a28")	 -- '.'
			name_to_code.put (66, "a29")	 -- '.'
			name_to_code.put (67, "a30")	 -- '.'
			name_to_code.put (68, "a31")	 -- '.'
			name_to_code.put (69, "a32")	 -- '.'
			name_to_code.put (70, "a33")	 -- '.'
			name_to_code.put (71, "a34")	 -- '.'
			name_to_code.put (72, "a35")	 -- '*'
			name_to_code.put (73, "a36")	 -- '.'
			name_to_code.put (74, "a37")	 -- '.'
			name_to_code.put (75, "a38")	 -- '.'
			name_to_code.put (76, "a39")	 -- '.'
			name_to_code.put (77, "a40")	 -- '.'
			name_to_code.put (78, "a41")	 -- '.'
			name_to_code.put (79, "a42")	 -- '.'
			name_to_code.put (80, "a43")	 -- '.'
			name_to_code.put (81, "a44")	 -- '.'
			name_to_code.put (82, "a45")	 -- '.'
			name_to_code.put (83, "a46")	 -- '.'
			name_to_code.put (84, "a47")	 -- '.'
			name_to_code.put (85, "a48")	 -- '.'
			name_to_code.put (86, "a49")	 -- '.'
			name_to_code.put (87, "a50")	 -- '.'
			name_to_code.put (88, "a51")	 -- '.'
			name_to_code.put (89, "a52")	 -- '.'
			name_to_code.put (90, "a53")	 -- '.'
			name_to_code.put (91, "a54")	 -- '.'
			name_to_code.put (92, "a55")	 -- '.'
			name_to_code.put (93, "a56")	 -- '.'
			name_to_code.put (94, "a57")	 -- '.'
			name_to_code.put (95, "a58")	 -- '.'
			name_to_code.put (96, "a59")	 -- '.'
			name_to_code.put (97, "a60")	 -- '.'
			name_to_code.put (98, "a61")	 -- '.'
			name_to_code.put (99, "a62")	 -- '.'
			name_to_code.put (100, "a63")	 -- '.'
			name_to_code.put (101, "a64")	 -- '.'
			name_to_code.put (102, "a65")	 -- '.'
			name_to_code.put (103, "a66")	 -- '.'
			name_to_code.put (104, "a67")	 -- '.'
			name_to_code.put (105, "a68")	 -- '.'
			name_to_code.put (106, "a69")	 -- '.'
			name_to_code.put (107, "a70")	 -- '.'
			name_to_code.put (108, "a71")	 -- 'M'
			name_to_code.put (109, "a72")	 -- '.'
			name_to_code.put (110, "a73")	 -- 'O'
			name_to_code.put (111, "a74")	 -- '.'
			name_to_code.put (113, "a75")	 -- '.'
			name_to_code.put (115, "a76")	 -- 'T'
			name_to_code.put (116, "a77")	 -- 'U'
			name_to_code.put (117, "a78")	 -- 'V'
			name_to_code.put (118, "a79")	 -- '.'
			name_to_code.put (119, "a81")	 -- '.'
			name_to_code.put (120, "a82")	 -- '|'
			name_to_code.put (121, "a83")	 -- '.'
			name_to_code.put (122, "a84")	 -- '.'
			name_to_code.put (123, "a97")	 -- '.'
			name_to_code.put (124, "a98")	 -- '.'
			name_to_code.put (125, "a99")	 -- '.'
			name_to_code.put (126, "a100")	 -- '.'
			name_to_code.put (161, "a101")	 -- '.'
			name_to_code.put (162, "a102")	 -- '.'
			name_to_code.put (163, "a103")	 -- '.'
			name_to_code.put (164, "a104")	 -- '.'
			name_to_code.put (48, "a105")	 -- '.'
			name_to_code.put (165, "a106")	 -- '.'
			name_to_code.put (166, "a107")	 -- '.'
			name_to_code.put (167, "a108")	 -- '.'
			name_to_code.put (171, "a109")	 -- 'j'
			name_to_code.put (170, "a110")	 -- 'i'
			name_to_code.put (169, "a111")	 -- 'h'
			name_to_code.put (168, "a112")	 -- 'g'
			name_to_code.put (41, "a117")	 -- '.'
			name_to_code.put (40, "a118")	 -- '.'
			name_to_code.put (39, "a119")	 -- '.'
			name_to_code.put (172, "a120")	 -- 'k'
			name_to_code.put (173, "a121")	 -- 'l'
			name_to_code.put (174, "a122")	 -- 'm'
			name_to_code.put (175, "a123")	 -- 'n'
			name_to_code.put (176, "a124")	 -- 'o'
			name_to_code.put (177, "a125")	 -- 'p'
			name_to_code.put (178, "a126")	 -- 'q'
			name_to_code.put (179, "a127")	 -- 'r'
			name_to_code.put (180, "a128")	 -- 's'
			name_to_code.put (181, "a129")	 -- 't'
			name_to_code.put (182, "a130")	 -- '.'
			name_to_code.put (183, "a131")	 -- '.'
			name_to_code.put (184, "a132")	 -- '.'
			name_to_code.put (185, "a133")	 -- '.'
			name_to_code.put (186, "a134")	 -- '.'
			name_to_code.put (187, "a135")	 -- '.'
			name_to_code.put (188, "a136")	 -- '.'
			name_to_code.put (189, "a137")	 -- '.'
			name_to_code.put (190, "a138")	 -- '.'
			name_to_code.put (191, "a139")	 -- '.'
			name_to_code.put (192, "a140")	 -- '.'
			name_to_code.put (193, "a141")	 -- '.'
			name_to_code.put (194, "a142")	 -- '.'
			name_to_code.put (195, "a143")	 -- '.'
			name_to_code.put (196, "a144")	 -- '.'
			name_to_code.put (197, "a145")	 -- '.'
			name_to_code.put (198, "a146")	 -- '.'
			name_to_code.put (199, "a147")	 -- '.'
			name_to_code.put (200, "a148")	 -- '.'
			name_to_code.put (201, "a149")	 -- '.'
			name_to_code.put (202, "a150")	 -- '.'
			name_to_code.put (203, "a151")	 -- '.'
			name_to_code.put (204, "a152")	 -- '.'
			name_to_code.put (205, "a153")	 -- '.'
			name_to_code.put (206, "a154")	 -- '�'
			name_to_code.put (207, "a155")	 -- '.'
			name_to_code.put (208, "a156")	 -- '�'
			name_to_code.put (209, "a157")	 -- '�'
			name_to_code.put (210, "a158")	 -- '.'
			name_to_code.put (211, "a159")	 -- '.'
			name_to_code.put (212, "a160")	 -- '.'
			name_to_code.put (213, "a161")	 -- '.'
			name_to_code.put (227, "a162")	 -- '.'
			name_to_code.put (214, "a163")	 -- '.'
			name_to_code.put (215, "a164")	 -- '.'
			name_to_code.put (217, "a165")	 -- '.'
			name_to_code.put (219, "a166")	 -- '.'
			name_to_code.put (220, "a167")	 -- '.'
			name_to_code.put (221, "a168")	 -- '.'
			name_to_code.put (222, "a169")	 -- '�'
			name_to_code.put (223, "a170")	 -- '.'
			name_to_code.put (224, "a171")	 -- '.'
			name_to_code.put (225, "a172")	 -- '.'
			name_to_code.put (226, "a173")	 -- '.'
			name_to_code.put (228, "a174")	 -- '.'
			name_to_code.put (229, "a175")	 -- '.'
			name_to_code.put (230, "a176")	 -- '.'
			name_to_code.put (231, "a177")	 -- '.'
			name_to_code.put (232, "a178")	 -- '.'
			name_to_code.put (233, "a179")	 -- '.'
			name_to_code.put (235, "a180")	 -- '.'
			name_to_code.put (237, "a181")	 -- '.'
			name_to_code.put (239, "a182")	 -- '.'
			name_to_code.put (242, "a183")	 -- '.'
			name_to_code.put (243, "a184")	 -- '.'
			name_to_code.put (245, "a185")	 -- '.'
			name_to_code.put (248, "a186")	 -- '.'
			name_to_code.put (250, "a187")	 -- '.'
			name_to_code.put (251, "a188")	 -- '.'
			name_to_code.put (252, "a189")	 -- '.'
			name_to_code.put (253, "a190")	 -- '.'
			name_to_code.put (254, "a191")	 -- '.'
			name_to_code.put (218, "a192")	 -- '.'
			name_to_code.put (234, "a193")	 -- '.'
			name_to_code.put (246, "a194")	 -- '.'
			name_to_code.put (249, "a195")	 -- '.'
			name_to_code.put (216, "a196")	 -- '.'
			name_to_code.put (244, "a197")	 -- '.'
			name_to_code.put (247, "a198")	 -- '.'
			name_to_code.put (236, "a199")	 -- '.'
			name_to_code.put (238, "a200")	 -- '.'
			name_to_code.put (241, "a201")	 -- '.'
			name_to_code.put (35, "a202")	 -- '.'
			name_to_code.put (112, "a203")	 -- '.'
			name_to_code.put (114, "a204")	 -- '.'
			name_to_code.put (32, "space")	 -- '.'
		end
		
end -- class PDF_ZAPFDINGBATS_ENCODING

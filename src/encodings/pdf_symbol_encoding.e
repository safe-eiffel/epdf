indexing

	description: "Character Encoding.  Uses Adobe character names."
	author: "Paul G. Crismer"
	licence: "Release under the Eiffel Forum licence.  See file 'forum.txt'."
	
class

	PDF_SYMBOL_ENCODING
	
inherit
	
	PDF_CHARACTER_ENCODING
	
feature -- Access

	name : PDF_NAME is
		once
			!!Result.make ("SymbolEncoding")
		end
		
		
feature {NONE} -- Implementation

	name_to_code : DS_HASH_TABLE[INTEGER, STRING] is
		once
			!!Result.make (256)
			name_to_code.put (65, "Alpha")	 -- '.'
			name_to_code.put (66, "Beta")	 -- '.'
			name_to_code.put (67, "Chi")	 -- '.'
			name_to_code.put (68, "Delta")	 -- '.'
			name_to_code.put (69, "Epsilon")	 -- '.'
			name_to_code.put (72, "Eta")	 -- '.'
			name_to_code.put (160, "Euro")	 -- '�'
			name_to_code.put (71, "Gamma")	 -- 'G'
			name_to_code.put (193, "Ifraktur")	 -- 'I'
			name_to_code.put (73, "Iota")	 -- '.'
			name_to_code.put (75, "Kappa")	 -- '.'
			name_to_code.put (76, "Lambda")	 -- '.'
			name_to_code.put (77, "Mu")	 -- '.'
			name_to_code.put (78, "Nu")	 -- '.'
			name_to_code.put (87, "Omega")	 -- '.'
			name_to_code.put (79, "Omicron")	 -- '.'
			name_to_code.put (70, "Phi")	 -- 'F'
			name_to_code.put (80, "Pi")	 -- '.'
			name_to_code.put (89, "Psi")	 -- '.'
			name_to_code.put (194, "Rfraktur")	 -- 'R'
			name_to_code.put (82, "Rho")	 -- '.'
			name_to_code.put (83, "Sigma")	 -- 'S'
			name_to_code.put (84, "Tau")	 -- '.'
			name_to_code.put (81, "Theta")	 -- 'T'
			name_to_code.put (85, "Upsilon")	 -- '.'
			name_to_code.put (161, "Upsilon1")	 -- '.'
			name_to_code.put (88, "Xi")	 -- '.'
			name_to_code.put (90, "Zeta")	 -- '.'
			name_to_code.put (192, "aleph")	 -- '.'
			name_to_code.put (97, "alpha")	 -- 'a'
			name_to_code.put (38, "ampersand")	 -- '&'
			name_to_code.put (208, "angle")	 -- '.'
			name_to_code.put (225, "angleleft")	 -- '<'
			name_to_code.put (241, "angleright")	 -- '>'
			name_to_code.put (187, "approxequal")	 -- '�'
			name_to_code.put (171, "arrowboth")	 -- '.'
			name_to_code.put (219, "arrowdblboth")	 -- '.'
			name_to_code.put (223, "arrowdbldown")	 -- '.'
			name_to_code.put (220, "arrowdblleft")	 -- '.'
			name_to_code.put (222, "arrowdblright")	 -- '.'
			name_to_code.put (221, "arrowdblup")	 -- '.'
			name_to_code.put (175, "arrowdown")	 -- '.'
			name_to_code.put (190, "arrowhorizex")	 -- '.'
			name_to_code.put (172, "arrowleft")	 -- '.'
			name_to_code.put (174, "arrowright")	 -- '.'
			name_to_code.put (173, "arrowup")	 -- '.'
			name_to_code.put (189, "arrowvertex")	 -- '.'
			name_to_code.put (42, "asteriskmath")	 -- '*'
			name_to_code.put (124, "bar")	 -- '|'
			name_to_code.put (98, "beta")	 -- '�'
			name_to_code.put (123, "braceleft")	 -- '{'
			name_to_code.put (125, "braceright")	 -- '}'
			name_to_code.put (236, "bracelefttp")	 -- '.'
			name_to_code.put (237, "braceleftmid")	 -- '.'
			name_to_code.put (238, "braceleftbt")	 -- '.'
			name_to_code.put (252, "bracerighttp")	 -- '.'
			name_to_code.put (253, "bracerightmid")	 -- '.'
			name_to_code.put (254, "bracerightbt")	 -- '.'
			name_to_code.put (239, "braceex")	 -- '.'
			name_to_code.put (91, "bracketleft")	 -- '['
			name_to_code.put (93, "bracketright")	 -- ']'
			name_to_code.put (233, "bracketlefttp")	 -- '.'
			name_to_code.put (234, "bracketleftex")	 -- '.'
			name_to_code.put (235, "bracketleftbt")	 -- '.'
			name_to_code.put (249, "bracketrighttp")	 -- '.'
			name_to_code.put (250, "bracketrightex")	 -- '.'
			name_to_code.put (251, "bracketrightbt")	 -- '.'
			name_to_code.put (183, "bullet")	 -- '�'
			name_to_code.put (191, "carriagereturn")	 -- '.'
			name_to_code.put (99, "chi")	 -- '.'
			name_to_code.put (196, "circlemultiply")	 -- '.'
			name_to_code.put (197, "circleplus")	 -- '.'
			name_to_code.put (167, "club")	 -- '.'
			name_to_code.put (58, "colon")	 -- ':'
			name_to_code.put (44, "comma")	 -- ','
			name_to_code.put (64, "congruent")	 -- '.'
			name_to_code.put (227, "copyrightsans")	 -- '.'
			name_to_code.put (211, "copyrightserif")	 -- '.'
			name_to_code.put (176, "degree")	 -- '�'
			name_to_code.put (100, "delta")	 -- 'd'
			name_to_code.put (168, "diamond")	 -- '.'
			name_to_code.put (184, "divide")	 -- '�'
			name_to_code.put (215, "dotmath")	 -- '�'
			name_to_code.put (56, "eight")	 -- '8'
			name_to_code.put (206, "element")	 -- '.'
			name_to_code.put (188, "ellipsis")	 -- '�'
			name_to_code.put (198, "emptyset")	 -- '�'
			name_to_code.put (101, "epsilon")	 -- 'e'
			name_to_code.put (61, "equal")	 -- '='
			name_to_code.put (186, "equivalence")	 -- '='
			name_to_code.put (104, "eta")	 -- '.'
			name_to_code.put (33, "exclam")	 -- '!'
			name_to_code.put (36, "existential")	 -- '.'
			name_to_code.put (53, "five")	 -- '5'
			name_to_code.put (166, "florin")	 -- '�'
			name_to_code.put (52, "four")	 -- '4'
			name_to_code.put (164, "fraction")	 -- '/'
			name_to_code.put (103, "gamma")	 -- '.'
			name_to_code.put (209, "gradient")	 -- '.'
			name_to_code.put (62, "greater")	 -- '>'
			name_to_code.put (179, "greaterequal")	 -- '='
			name_to_code.put (169, "heart")	 -- '.'
			name_to_code.put (165, "infinity")	 -- '8'
			name_to_code.put (242, "integral")	 -- '.'
			name_to_code.put (243, "integraltp")	 -- '('
			name_to_code.put (244, "integralex")	 -- '.'
			name_to_code.put (245, "integralbt")	 -- ')'
			name_to_code.put (199, "intersection")	 -- 'n'
			name_to_code.put (105, "iota")	 -- '.'
			name_to_code.put (107, "kappa")	 -- '.'
			name_to_code.put (108, "lambda")	 -- '.'
			name_to_code.put (60, "less")	 -- '<'
			name_to_code.put (163, "lessequal")	 -- '='
			name_to_code.put (217, "logicaland")	 -- '.'
			name_to_code.put (216, "logicalnot")	 -- '�'
			name_to_code.put (218, "logicalor")	 -- '.'
			name_to_code.put (224, "lozenge")	 -- '.'
			name_to_code.put (45, "minus")	 -- '-'
			name_to_code.put (162, "minute")	 -- '''
			name_to_code.put (109, "mu")	 -- '�'
			name_to_code.put (180, "multiply")	 -- '�'
			name_to_code.put (57, "nine")	 -- '9'
			name_to_code.put (207, "notelement")	 -- '.'
			name_to_code.put (185, "notequal")	 -- '.'
			name_to_code.put (203, "notsubset")	 -- '.'
			name_to_code.put (110, "nu")	 -- '.'
			name_to_code.put (35, "numbersign")	 -- '#'
			name_to_code.put (119, "omega")	 -- '.'
			name_to_code.put (118, "omega1")	 -- '.'
			name_to_code.put (111, "omicron")	 -- '.'
			name_to_code.put (49, "one")	 -- '1'
			name_to_code.put (40, "parenleft")	 -- '('
			name_to_code.put (41, "parenright")	 -- ')'
			name_to_code.put (230, "parenlefttp")	 -- '.'
			name_to_code.put (231, "parenleftex")	 -- '.'
			name_to_code.put (232, "parenleftbt")	 -- '.'
			name_to_code.put (246, "parenrighttp")	 -- '.'
			name_to_code.put (247, "parenrightex")	 -- '.'
			name_to_code.put (248, "parenrightbt")	 -- '.'
			name_to_code.put (182, "partialdiff")	 -- '.'
			name_to_code.put (37, "percent")	 -- '%'
			name_to_code.put (46, "period")	 -- '.'
			name_to_code.put (94, "perpendicular")	 -- '.'
			name_to_code.put (102, "phi")	 -- 'f'
			name_to_code.put (106, "phi1")	 -- '.'
			name_to_code.put (112, "pi")	 -- 'p'
			name_to_code.put (43, "plus")	 -- '+'
			name_to_code.put (177, "plusminus")	 -- '�'
			name_to_code.put (213, "product")	 -- '.'
			name_to_code.put (204, "propersubset")	 -- '.'
			name_to_code.put (201, "propersuperset")	 -- '.'
			name_to_code.put (181, "proportional")	 -- '.'
			name_to_code.put (121, "psi")	 -- '.'
			name_to_code.put (63, "question")	 -- '?'
			name_to_code.put (214, "radical")	 -- 'v'
			name_to_code.put (96, "radicalex")	 -- '.'
			name_to_code.put (205, "reflexsubset")	 -- '.'
			name_to_code.put (202, "reflexsuperset")	 -- '.'
			name_to_code.put (226, "registersans")	 -- '.'
			name_to_code.put (210, "registerserif")	 -- '.'
			name_to_code.put (114, "rho")	 -- '.'
			name_to_code.put (178, "second")	 -- '.'
			name_to_code.put (59, "semicolon")	 -- ';'
			name_to_code.put (55, "seven")	 -- '7'
			name_to_code.put (115, "sigma")	 -- 's'
			name_to_code.put (86, "sigma1")	 -- '.'
			name_to_code.put (126, "similar")	 -- '~'
			name_to_code.put (54, "six")	 -- '6'
			name_to_code.put (47, "slash")	 -- '/'
			name_to_code.put (32, "space")	 -- '.'
			name_to_code.put (170, "spade")	 -- '.'
			name_to_code.put (39, "suchthat")	 -- '.'
			name_to_code.put (229, "summation")	 -- '.'
			name_to_code.put (116, "tau")	 -- 't'
			name_to_code.put (92, "therefore")	 -- '.'
			name_to_code.put (113, "theta")	 -- '.'
			name_to_code.put (74, "theta1")	 -- '.'
			name_to_code.put (51, "three")	 -- '3'
			name_to_code.put (228, "trademarksans")	 -- '.'
			name_to_code.put (212, "trademarkserif")	 -- '.'
			name_to_code.put (50, "two")	 -- '2'
			name_to_code.put (95, "underscore")	 -- '_'
			name_to_code.put (200, "union")	 -- '.'
			name_to_code.put (34, "universal")	 -- '.'
			name_to_code.put (117, "upsilon")	 -- '.'
			name_to_code.put (195, "weierstrass")	 -- 'P'
			name_to_code.put (120, "xi")	 -- '.'
			name_to_code.put (48, "zero")	 -- '0'
			name_to_code.put (122, "zeta")	 -- '.'
		end
		
end -- class PDF_SYMBOL_ENCODING
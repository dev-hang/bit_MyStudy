package com.mystudy.test;

import java.util.Scanner;

public class CustomerDAO_Test {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		
		CustomerVO vo = null;
		CustomerDAO dao = new CustomerDAO();
		int result = 0;
		int select = 0;

		String id = null;
		String password;
		String name;
		String tel;
		
		//¾ÆÀÌµð, ºñ¹Ð¹øÈ£, ÀÌ¸§ Á¶°Ç
		String idpwForm = "^[a-zA-Z0-9]{3,8}$"; //¾Æ¾Æµð ºñ¹Ð¹øÈ£ Á¶°Ç : 3~8ÀÚ¸®, ¿µ¹®¼Ò¹®ÀÚ, ´ë¹®ÀÚ, ¼ýÀÚ °¡´É
		String nameForm = "^[°¡-ÆR]{1,12}$"; //ÀÌ¸§ Á¶°Ç : ÇÑ±Û¸¸ °¡´É, 1~12ÀÚ¸®
		String telForm = "^010-\\d{4}-\\d{4}$";//ÀüÈ­¹øÈ£ ÀÔ·Â Á¶°Ç

			while (true) {
				System.out.println("===========¹Ý°©½À´Ï´Ù È¸¿ø°¡ÀÔ ÆäÀÌÁö ÀÔ´Ï´Ù.=======");
				System.out.println("[1.È¸¿ø°¡ÀÔ    2.È¸¿ø Á¤º¸ ¼öÁ¤    3.È¸¿ø Å»Åð    4.°¡ÀÔÁ¾·á]");
				System.out.println("========================================");
				System.out.println("[¸Þ´º ¼±ÅÃ]");
				select = Integer.parseInt(scan.nextLine());
				
				while (true) {
					switch (select) {
					case 1:
						while (true) {
							System.out.print("¾ÆÀÌµð : ");
							id = scan.nextLine();
							if (id.matches(idpwForm)) {
								if (dao.checkId(id)) {
									System.out.println("Á¸ÀçÇÏ´Â ¾ÆÀÌµð ÀÔ´Ï´Ù!");
								} else {
									break;
								}
							} else {
								System.out.println("´Ù¸¥ ¾ÆÀÌµð¸¦ ÀÔ·ÂÇÏ¼¼¿ä.");
							}
						}

						while (true) {
							System.out.print("ºñ¹Ð¹øÈ£ :");
							password = scan.nextLine();
							if (password.matches(idpwForm)) {
								break;
							} else {
								System.out.println("Á¶°Ç¿¡ ¸ÂÁö ¾Ê½À´Ï´Ù ´Ù½Ã ÀÔ·ÂÇÏ¼¼¿ä");
							}
						}

						while (true) {
							System.out.print("ÀÌ¸§ : ");
							name = scan.nextLine();
							if (name.matches(nameForm)) {
								break;
							} else {
								System.out.println("ÀÌ¸§À» È®ÀÎÇÏ¼¼¿ä");
							}
						}

						while (true) {
							System.out.print("ÇÚµåÆù ¹øÈ£ : ");
							tel = scan.nextLine();
							if (tel.matches(telForm)) {
								if (dao.checkTel(tel)) {
									System.out.println("Á¸ÀçÇÏ´Â ÇÚµåÆù¹øÈ£ ÀÔ´Ï´Ù.");
								} else {
									break;
								}
							} else {
								System.out.println("´Ù½Ã ÀÔ·Â ÇÏ¼¼¿ä.");
							}
						}
						vo = new CustomerVO(id, password, name, tel);
						dao.joinStart(vo);
						break;

					case 2:
						while (true) {
							System.out.print("¾ÆÀÌµð : ");
							id = scan.nextLine();
							System.out.print("ºñ¹Ð¹øÈ£ :");
							password = scan.nextLine();
							if (!dao.checkIdPassword(id, password)) {
								System.out.println("°¡ÀÔ³»¿ªÀÌ ¾ø½À´Ï´Ù.");
							} else {
								break;
							}
						}

						while (true) {
							System.out.println("================ È¸¿ø Á¤º¸ º¯°æ ===================");
							System.out.println("[1.ºñ¹Ð¹øÈ£ º¯°æ    2.ÀÌ¸§ º¯°æ    3.ÀüÈ­¹øÈ£ º¯°æ    4.¸ÞÀÎÈ­¸éÀ¸·Î]");
							System.out.println("==============================================");
							select = Integer.parseInt(scan.nextLine());

							if (select == 1) {
								while (true) {
									System.out.print("º¯°æÇÒ ºñ¹Ð¹øÈ£ : ");
									password = scan.nextLine();
									if (password.matches(idpwForm)) {
										dao.updatePassword(password, id);
										System.out.println(password + "·Î ¹Ù²î¾ú½À´Ï´Ù");
										break;
									} else {
										System.out.println("ºñ¹Ð¹øÈ£ È®ÀÎ");
									}
								}
							}
							if (select == 2) {
								while (true) {
									System.out.print("º¯°æÇÒ ÀÌ¸§ : ");
									name = scan.nextLine();
									if (name.matches(nameForm)) {
										dao.updateName(name, id);
										System.out.println(name + "À¸·Î ¹Ù²î¾ú½À´Ï´Ù.");
										break;
									} else {
										System.out.println("ÀÌ¸§È®ÀÎ");
									}
								}
							}
							if(select == 3) {
								while(true) {
									System.out.print("º¯°æÇÒ ÀüÈ­¹øÈ£ : ");
									tel = scan.nextLine();
									if(tel.matches(telForm)) {
										dao.updatetel(tel, id);
										System.out.println(tel +"À¸·Î º¯°æµÇ¾ú½À´Ï´Ù.");
										break;
									} else {
										System.out.println("ÀüÈ­¹øÈ£È®ÀÎ");
									}
								}
							}
							if(select == 4) {
								System.out.println("Ã³À½È­¸é");
								break;
							}
						}
						break;
						
					case 3:
						while (true) {
							System.out.print("¾ÆÀÌµð : ");
							id = scan.nextLine();
							System.out.print("ºñ¹Ð¹øÈ£ :");
							password = scan.nextLine();
							if (!dao.checkIdPassword(id, password)) {
								System.out.println("¾ø´Â È¸¿øÀÔ´Ï´Ù");
							} else {
								vo = new CustomerVO(id, password);
								dao.delete(vo);
								System.out.println("Å»Åð µÇ¾ú½À´Ï´Ù.");
								break;
							}
						}
						break;
					case 4:
							System.out.print("°¡ÀÔÁ¾·á");
							id = scan.nextLine();
						    break;
						
					}
					break;
				}
			}
		}
}
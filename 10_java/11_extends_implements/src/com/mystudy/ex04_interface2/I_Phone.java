package com.mystudy.ex04_interface2;

//�������̽� : �߻�ü  *Ŭ���� : ����ü
interface I_Phone {
	//{} ���� : �߻�޼ҵ�(abstract method)
	//public abstract �޼ҵ���
	public abstract String getType(); 
	public String getPhoneNo(); //abstract ��������
	
	void call(); //public abstract ��������
	void receiveCall();
	void view();
	
	void sendMsg();
	void receiveMsg();
}

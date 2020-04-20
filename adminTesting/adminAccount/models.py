# Create your models here.
from __future__ import unicode_literals
from django.db import models
from datetime import datetime

# Create your models here.

class Faq(models.Model):
	faq_id = models.CharField(max_length=16, default='0000000000000001')
	faq_type = models.CharField(max_length=10, default='999')
	faq_question = models.TextField(default='질문')
	faq_answer = models.TextField(default='답변')

	def __str__(self):
		return self.faq_question

class Account(models.Model):
	account_create_dt = models.DateTimeField(default=datetime.now)		# 생성일        -- 2020-02-06
	account_update_dt = models.DateTimeField(default=datetime.now)    	# 변경일        -- 2020-02-06
	account_end_dt = models.DateTimeField(null=True) 				       			# 만료일        -- null
	account_requestor = models.CharField(null=True, max_length=100)      			# 요청자명      -- 이정희
	account_devteam = models.CharField(null=True, max_length=100, default='') 		# 요청팀      	-- 표준화
	account_svr = models.CharField(null=True, max_length=100)          				# 호스트명      -- db-a
	account_user = models.CharField(null=True, max_length=100)         				# 아이디        -- imsi_test
	account_host = models.CharField(null=True, max_length=100)         				# 허용호스트    -- 127.0.0.1
	account_pass = models.CharField(null=True, max_length=100)           			# 패스워드      	-- Test01)! select password("Test01)!");
	account_hash = models.CharField(null=True, max_length=100)           			# 해쉬         	-- select password("Test01)!"); -- *BB498F1B5EDFDB45CA0F6FD3FDAF0A4FE01730E5 -- 41자리
	account_grant = models.CharField(null=True, max_length=100)          			# 권한         	-- select, insert, update, delete
	account_grant_with = models.CharField(null=True, max_length=100, default='N')   # grant with  	--
	account_db = models.CharField(null=True, max_length=100)             			# db          	-- test
	account_table = models.CharField(null=True, max_length=100)          			# table       	-- test
	account_info = models.CharField(null=True, max_length=100)            			# 용도         	-- 테스트용
	account_sql = models.CharField(null=True, max_length=200, default='')            			# sql         	-- 주석 sql~~~~
	account_url = models.CharField(null=True, max_length=100)            			# url         	-- 지라 혹은 위키
	account_del_yn = models.CharField(null=True, max_length=100, default='N')       # 삭제여부		-- N/Y
	account_del_dt = models.DateTimeField(null=True)                   				# 삭제조치일
	account_del_reason = models.CharField(null=True, max_length=100, default='')     			# 삭제사유
	account_del_note = models.CharField(null=True, max_length=100, default='')       			# 삭제비고

	def __str__(self):
		return self.account_create_dt

class AccountRepository(models.Model):
	create_dt = models.DateTimeField(default=datetime.now) # 일자
	repository_team= models.CharField(null=True, max_length=20, default='') # 연관부서
	repository_name = models.CharField(null=True, max_length=40) # 레포지터리 명
	repository_url= models.CharField(null=True, max_length=200) # 레포지터리 URL
	account_user = models.CharField(null=True, max_length=40) # 계정명
	url = models.CharField(null=True, max_length=100) # JIRA URL
	info = models.CharField(null=True, max_length=100) # INFO

	def __str__(self):
		return self.create_dt
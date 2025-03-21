from django.utils.deprecation import MiddlewareMixin
from django.http import HttpResponse
from django.shortcuts import HttpResponse, redirect
from django.conf import settings


# 中间件做登录验证
class MyMiddleware(MiddlewareMixin):
    def process_request(self, request):
        path_url = request.path_info
        print(path_url)
        # 如果当前请求，在白名单，不验证
        if not path_url in settings.WHITE_LIST:
            user_dic = request.session.get('user_dic')
            if not user_dic:
                return redirect('user_login')
            pass

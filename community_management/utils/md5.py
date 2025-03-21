# -*- coding:utf-8 -*-

import hashlib


def md5(string):
    """
    :param string: 传递的参数，想要加密的数据
    :return:
    """
    # 实例化对象的时候---加盐(字节)
    hash_object = hashlib.md5('可以修改的字符串'.encode('utf-8'))
    # 传入明文---加盐(字节)，生成密文
    hash_object.update(string.encode('utf-8'))
    # 获取密文
    return hash_object.hexdigest()

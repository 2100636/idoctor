# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django import template
from project.core.models import Menu, Slider
register = template.Library()


def slider_tag(context, request):
    slides = Slider.objects.all()
    return {
        'slider': slides,
        'hello': 'hello'
    }
register.inclusion_tag('core/tags/slider.html', takes_context=True)(slider_tag)


def top_menu(context, request):
    items = Menu.objects.all()
    dict = {}
    list = []
    for item in items:
        if not item.parent:
            dict[item] = [item]
    for item in items:
        if item.parent:
            tmp = ['', ]
            for ch in Menu.objects.filter(parent=item.parent_id):
                tmp.append(ch)
            dict[Menu.objects.get(id=item.parent_id)] = tmp
    return {
        'user': request.user,
        'dict': dict
    }
register.inclusion_tag('core/tags/top_menu.html', takes_context=True)(top_menu)


# def coreLeftMenu(context, request):
#     user = request.user
#     if user.is_authenticated():
#         profile = getOrganizerProfile(user)
#         return {
#             'user': user,
#             'profile': profile,
#         }
#     else:
#         return {
#             'user': user,
#         }
# register.inclusion_tag('core/tags/core_left_menu.html', takes_context=True)(coreLeftMenu)


# def menu_tree(context, request):
#     return {
#         'menu_objects': MenuCategory.objects.all(),
#     }
# register.inclusion_tag('core/tags/menu_category.html', takes_context=True)(menu_tree)
# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.http.response import HttpResponse, Http404
from django.http import HttpResponseRedirect
from django.core.mail import send_mail, EmailMultiAlternatives
from django.template import RequestContext
from project.core.models import Page, Service, Review, Article, Faq, Category, Price, Video
from project.core.forms import ReviewForm, ContactForm
from project.settings import ADMIN_EMAIL
from django.core.exceptions import ObjectDoesNotExist
from project import settings


def indexView(request, template_name="core/index.html"):
    try:
        homepage = Page.objects.get(slug="home")
        title = homepage.meta_title
        description = homepage.meta_description
        keywords = homepage.meta_keywords
    except ObjectDoesNotExist:
        title = 'Главная'

    pages = Page.objects.all()
    reviews = Review.objects.filter(active=True)[:7]
    articles = Article.objects.all()[:6]
    videos = Video.objects.all()
    small_videos = []
    big_videos = []
    for video in videos:
        if video.isbig == True:
            big_videos.append(video)
        else:
            small_videos.append(video)

    services = Service.objects.filter(main_check=True)[:6]
    categories = Category.objects.filter(active=True)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


# форма для заявки обсуждения условий доставки
def uslov_dost_obsuditForm(request, template_name="core/uslov_dost_obsudit_form.html"):
    title = 'Условия доставки для сервисных центров'
    description = 'Условия доставки для сервисных центров'

    if 'phone' in request.POST:
        if request.POST['phone'] != '':
            subject = u'id70.ru Заказ на звонок'
            message = u'Имя: %s \nНомер телефона: %s \nГород: %s \n' % \
                      (request.POST['name'], request.POST['phone'], request.POST['city'])
            send_mail(subject, message, 'idoctor70@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
            zakaz_message = u"Спасибо, заявка принята"
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))




def zakaz_zvonokForm(request, template_name="core/zakaz_zvonok_form.html"):
    title = 'Заказать звонок'
    description = 'Заказать звонок'

    if 'phone' in request.POST:
        if request.POST['phone'] != '' and request.POST['name'] != '':
            subject = u'id70.ru Заказ на звонок'
            if 'formtype' in request.POST:
                message = u'Имя: %s \nНомер телефона: %s \nФорма: %s' % (request.POST['name'],
                                                                         request.POST['phone'], request.POST['formtype'])
            else:
                message = u'Имя: %s \nНомер телефона: %s \n' % (request.POST['name'], request.POST['phone'])
            send_mail(subject, message, 'onpixru@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
            zakaz_message = u"Спасибо, заявка принята"
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def reviewForm(request, template_name="core/review_form.html"):
    title = 'Отправьте нам свой отзыв'
    description = 'Напишите отзыв о нашей работе'

    if request.POST:
        review_form = ReviewForm(request.POST, request.FILES)
        if review_form.is_valid():
            new_review = review_form.save()
            subject = u'id70.ru новый отзыв'
            message = u'Имя: %s \n отзыв: %s \n' % (request.POST['name'], request.POST['description'])
            send_mail(subject, message, 'idoctor70@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
            review_message = u"Спасибо, Ваш отзыв успешно отправлен"
        else:
            review_message = u"Ошибка при добавлении отзыва"
    else:
        review_form = ReviewForm

    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))





def articlesView(request, template_name="core/articles.html"):
    title = 'Статьи'
    articles = Article.objects.all()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def articleView(request, slug, template_name="core/article.html"):
    user = request.user
    article = Article.objects.get(slug=slug)
    title = article.name
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def pageView(request, slug, template_name="core/page.html"):
    user = request.user
    try:
        page = Page.objects.get(slug=slug)
        h1 = page.name
        title = page.meta_title
        description = page.meta_description
        description0 = page.description0
        description1 = page.description
        description2 = page.description2
        keywords = page.meta_keywords

        if request.method == "POST":
            if 'phone' in request.POST:
                if request.POST['phone'] != '':
                    subject = u'id70.ru заказ на выкуп дисплеев'
                    message = u'Имя: %s \nТелефон: %s \nСообщение: %s' % (request.POST['name'], request.POST['phone'], request.POST['message'])
                    send_mail(subject, message, 'idoctor70@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
                    message_after_submit = 'Спасибо! Ваша заявка принята, с вами свяжутся наши специалисты'

        #### если страница - скупка дисплеев, то надо добавить форму заявки
        ## if page.slug == 'kupim_prodam_display_iphone_remont':
    except ObjectDoesNotExist:
        raise Http404

    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def faqView(request, template_name="core/faq.html"):
    title = 'faq'
    faqs = Faq.objects.all()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))



def serviceView(request, slug, template_name="core/service.html"):
    user = request.user
    service = Service.objects.get(slug=slug)
    title = service.name
    description = service.meta_description
    keywords = service.meta_keywords
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = u'id70.ru форма'
            message = u'Имя: %s \n Телефон: %s \n Описание проблемы: %s' % (request.POST['name'], request.POST['phone'], request.POST['text'])
            send_mail(subject, message, 'idoctor70@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
            return redirect('/contacts')
        else:
            form = ContactForm(request.POST)
    else:
        form = ContactForm()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def contactView(request, template_name="core/contact.html"):
    user = request.user
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = u'id70.ru форма'
            message = u'Имя: %s \n Телефон: %s \n Описание проблемы: %s' % (request.POST['name'], request.POST['phone'], request.POST['text'])
            # send_mail(subject, message, '2100636@mail.ru', [ADMIN_EMAIL], fail_silently=False)
            send_mail(subject, message, 'idoctor70@yandex.ru', [ADMIN_EMAIL], fail_silently=False)
            return redirect('/contacts')
        else:
            form = ContactForm(request.POST)
    else:
        form = ContactForm()
    #service = Service.objects.get(slug=slug)
    title = 'Контакты'
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def aboutView(request, template_name="core/about.html"):
    user = request.user
    try:
        about = Page.objects.get(slug="about")
        title = about.meta_title
        description = about.meta_description
        keywords = about.meta_keywords
    except ObjectDoesNotExist:
        title = 'О нас'

    #service = Service.objects.get(slug=slug)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))



def category_view(request, category_slug, template_name="category/category.html"):
    c = get_object_or_404(Category, slug=category_slug)
    title = c.name
    description = c.meta_description
    keywords = c.meta_keywords
    prices = set()
    if c.level == 0:
        loop_category = Category.objects.filter(tree_id=c.tree_id)
        for category in loop_category:
            cat_prices = Price.objects.filter(category=c)
            prices = prices | set(cat_prices)
    else:
        prices = Price.objects.filter(category=c)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def price_view(request, slug, template_name="category/price.html"):
    price = Price.objects.get(slug=slug)
    title = price.name
    description = price.meta_description
    keywords = price.meta_keywords
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))

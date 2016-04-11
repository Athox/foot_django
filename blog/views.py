from django.http import HttpResponse
from django.shortcuts import render
from blog.models import Championnat


def liste_pays(request):
    pays = Championnat.objects.only("pays_championnat").order_by("pays_championnat")
    return render(request, 'liste_pays.html', {'pays': pays})

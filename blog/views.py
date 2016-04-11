from django.http import HttpResponse
from django.shortcuts import render
from blog.models import Championnat


def liste_pays(request):
    pays = Championnat(pays_championnat="prout")
    return render(request, 'liste_pays.html', {'pays': pays.pays_championnat})

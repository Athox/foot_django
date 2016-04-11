from django.http import HttpResponse
from django.shortcuts import render
from blog.models import Championnat


def liste_pays(request):
    pays = Championnat.objects.all().order_by("pays_championnat")
    return render(request, 'liste_pays.html', {'pays': pays})

def list_championnat(request, pays_championnat)
    championnats = Championnat.objects.all("pays_championnat"=pays_championnat).\
        order_by("nom_championnat")
    return render(request, "liste_championnat.html", {"championnats": championnats})

from django.http import HttpResponse
from django.shortcuts import render


def liste_pays(request):
    pays = Championnat.pays_championnat.all()
    return render(request, 'liste_pays.html', {'pays': pays})

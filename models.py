# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals

from django.db import models


class Championnat(models.Model):
    id_championnat = models.AutoField(primary_key=True)
    nom_championnat = models.CharField(max_length=50)
    pays_championnat = models.CharField(max_length=50)
    annee_championnat = models.IntegerField()
    nb_equipe_championnat = models.IntegerField()
    pts_gagne = models.IntegerField()
    pts_perdu = models.IntegerField()
    pts_nul = models.IntegerField()
    type_exaequo = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'championnat'


class Equipe(models.Model):
    id_equipe = models.AutoField(primary_key=True)
    nom_equipe = models.CharField(max_length=50)
    entraineur_equipe = models.CharField(max_length=50)
    blason_equipe = models.CharField(max_length=100, blank=True, null=True)
    nom_stade = models.CharField(max_length=50)
    capacite_stade = models.IntegerField()
    nb_but_marques = models.IntegerField()
    nb_but_concedes = models.IntegerField()
    pts_saison_equipe = models.IntegerField()
    president_equipe = models.CharField(max_length=50, blank=True, null=True)
    annee_creation_equipe = models.IntegerField()
    id_championnat = models.ForeignKey(Championnat, models.DO_NOTHING, db_column='id_championnat')
    nb_match_equipe = models.IntegerField()
    nb_matchg_equipe = models.IntegerField()
    nb_matchn_equipe = models.IntegerField()
    nb_matchp_equipe = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'equipe'


class Matchs(models.Model):
    id_match = models.AutoField(primary_key=True)
    equipe_dom = models.CharField(max_length=50)
    equipe_ext = models.CharField(max_length=50)
    journee_match = models.IntegerField()
    date_match = models.DateField()
    gagnant = models.IntegerField()
    nb_but_dom = models.IntegerField()
    nb_but_ext = models.IntegerField()
    id_championnat = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'matchs'

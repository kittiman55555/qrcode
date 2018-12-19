# Generated by Django 2.1.4 on 2018-12-19 13:40

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Brands',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Register',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('date', models.DateTimeField(blank=True, default=datetime.datetime.now)),
                ('phone', models.CharField(max_length=10)),
                ('address', models.TextField()),
                ('item_number', models.CharField(max_length=50)),
                ('code', models.CharField(max_length=50)),
                ('running', models.CharField(max_length=50)),
                ('http_user', models.CharField(max_length=50)),
                ('latitude', models.CharField(blank=True, max_length=50)),
                ('longitude', models.CharField(blank=True, max_length=50)),
                ('cf1', models.CharField(blank=True, max_length=50)),
                ('cf2', models.CharField(blank=True, max_length=50)),
                ('cf3', models.CharField(blank=True, max_length=50)),
                ('cf4', models.CharField(blank=True, max_length=50)),
                ('cf5', models.CharField(blank=True, max_length=50)),
                ('cf6', models.CharField(blank=True, max_length=50)),
                ('cf7', models.CharField(blank=True, max_length=50)),
                ('cf8', models.CharField(blank=True, max_length=50)),
                ('cf9', models.CharField(blank=True, max_length=50)),
                ('cf10', models.CharField(blank=True, max_length=50)),
                ('brands', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accounts.Brands')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]

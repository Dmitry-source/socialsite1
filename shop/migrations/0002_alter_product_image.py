# Generated by Django 3.2.5 on 2021-08-06 15:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(blank=True, upload_to='shop/products/%Y/%m/%d'),
        ),
    ]
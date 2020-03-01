# Generated by Django 3.0.2 on 2020-02-02 09:18

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Faq',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('faq_id', models.CharField(default='0000000000000001', max_length=16)),
                ('faq_type', models.CharField(default='999', max_length=10)),
                ('faq_question', models.TextField(default='질문')),
                ('faq_answer', models.TextField(default='답변')),
            ],
        ),
    ]

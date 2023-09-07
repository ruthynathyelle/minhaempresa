from django.db import models
from stdimage import StdImageField


class Base (models.Model):
    criado = models.DateTimeField(auto_now_add=True)
    modificado = models.DateTimeField(auto_now=True)
    ativo = models.BooleanField(default=True)

    class Meta:
        abstract = True


class Cargo(Base):
    nome = models.CharField(max_length=100)

    class Meta:
        verbose_name = 'Cargo'
        verbose_name_plural = 'Cargos'
        ordering = ('nome',)

    def __str__(self):
        return self.nome


class Funcionario(Base):
    nome = models.CharField(max_length=200)
    biografia = models.TextField(max_length=1000)
    cargo = models.ForeignKey(Cargo, models.SET_NULL, null=True, blank=True)
    foto = StdImageField(upload_to='equipe',
                         variations={'thumb': {'width':600, 'height': 600, 'crop':True}})
    facebook = models.CharField(max_length=100)
    twitter = models.CharField(max_length=100)
    instagram = models.CharField(max_length=100)

    class Meta:
        verbose_name = 'Funcionário'
        verbose_name_plural = 'Funcionários'

    def __str__(self):
        return self.nome


class Servico(Base):
    imagem = StdImageField(upload_to='servicos',
                           variations={'thumb': {'width': 1000,
                                                 'height': 667,
                                                 'crop': True}})
    nome = models.CharField( max_length=50)
    descricao= models.TextField(max_length=500)

    class Meta:
        verbose_name= 'Serviço'
        verbose_name_plural= 'Serviços'

    def __str__(self):
        return self.nome

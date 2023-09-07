from django.contrib import admin
from core.models import Cargo, Funcionario, Servico

@admin.register(Cargo)
class CargoAdmin(admin.ModelAdmin):
    list_display = ('nome', 'ativo')


@admin.register(Funcionario)
class FuncionarioAdmin(admin.ModelAdmin):
    list_display = ('nome', 'cargo', 'ativo', 'criado')
    list_editable = ('ativo',)


@admin.register(Servico)
class ServicosAdmin(admin.ModelAdmin):
    list_display = ('nome', 'ativo', 'criado')
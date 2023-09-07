from django.urls import path

from core import views

urlpatterns = [
    path('', views.IndexView.as_view(), name='home'),
    path('detalheservico/<pk>', views.ServicoDetailView.as_view(), name='detalheservico'),
]
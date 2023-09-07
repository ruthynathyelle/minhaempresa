from django.views.generic import FormView, DetailView
from django.urls import reverse_lazy # para redirecionar a navegação após o envio do formulário
from django.contrib import messages # para mostrar mensagens de sucesso ou erro.

from core.models import Funcionario, Servico
from core.forms import ContatoForm


class IndexView(FormView):
    template_name = 'index.html'
    form_class = ContatoForm
    success_url = reverse_lazy('home')

    def get_context_data(self, **kwargs):
        contexto = super().get_context_data(**kwargs)
        contexto['funcionarios'] = Funcionario.objects.order_by('?').all()
        contexto['servicos'] = Servico.objects.filter(ativo=True)
        return contexto

    def form_valid(self, form):
        form.send_mail()
        messages.success(self.request, 'E-mail enviado com sucesso!!!')
        return super().form_valid(form)

    def form_invalid(self, form):
        messages.error(self.request, 'Não foi possível enviar o e-mail.')
        return super(IndexView, self).form_invalid(form)


class ServicoDetailView(DetailView):
    model = Servico
    template_name = 'servico_detalhe.html'

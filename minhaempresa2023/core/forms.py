from django import forms
from django.core.mail.message import EmailMessage


class ContatoForm(forms.Form):
    nome = forms.CharField(max_length=100)
    email = forms.EmailField(max_length=100)
    telefone = forms.CharField(max_length=20)
    mensagem = forms.CharField(max_length=300, widget=forms.Textarea)

    def send_mail(self):
        nome = self.cleaned_data['nome']
        email = self.cleaned_data['email']
        telefone = self.cleaned_data['telefone']
        mensagem = self.cleaned_data['mensagem']

        conteudo = f'Contato de {nome} {telefone}\n{mensagem}'

        mail = EmailMessage(
            subject=f'Contato de {nome}',
            body= conteudo,
            from_email= 'contato@minhaempresa2023.com.br',
            to= ['contato@minhaempresa2023.com.br',],
            headers= {'Reply-To': email}
        )
        mail.send()
from django import forms

# 表單也能做model
class SongListForm(forms.Form):
    name = forms.CharField(max_length=40, label='歌名')
    singer = forms.CharField(max_length=40, label='歌手')
    type = forms.CharField(max_length=15, required = False, label='曲風', widget= forms.TextInput
                           (attrs={'placeholder':'可不填'}))
    mood = forms.IntegerField(label='心情')
    url = forms.CharField(max_length=100,label="網址")
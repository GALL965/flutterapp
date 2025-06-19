from django.db import models

class User(models.Model):
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)
    username = models.CharField(max_length=255, unique=True)
    image_url = models.CharField(max_length=255, null=True)

    def __str__(self):
        return self.username


class Post(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    description = models.CharField(max_length=1000)
    image_url = models.CharField(max_length=255, null=True)
    title = models.CharField(max_length=255)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Comment(models.Model):
    content = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)


class Reaction(models.Model):
    class ReactionType(models.TextChoices):
        LIKE = 'LIKE'
        LOVE = 'LOVE'
        NOJAO = 'NOJAO'
        TITE = 'TITE'
        WAO = 'WAO'
        XDDD = 'XDDD'

    reacted_at = models.DateTimeField(auto_now_add=True)
    type = models.CharField(max_length=10, choices=ReactionType.choices)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)


from typing import Optional, List
import strawberry
from strawberry.types import Info
from .models import Post, User, Comment, Reaction

@strawberry.type
class UserType:
    id: int
    username: str
    email: str
    image_url: str

@strawberry.type
class ReactionType:
    id: int
    type: str
    reacted_at: str
    user: UserType

@strawberry.type
class CommentType:
    id: int
    content: str
    created_at: str
    user: UserType

@strawberry.type
class PostType:
    id: int
    title: str
    description: str
    image_url: str
    created_at: str
    user: UserType

    @strawberry.field
    def comments(self, info: Info) -> List["CommentType"]:
        return Comment.objects.filter(post_id=self.id)

    @strawberry.field
    def reactions(self, info: Info) -> List["ReactionType"]:
        return Reaction.objects.filter(post_id=self.id)

@strawberry.type
class Query:
    @strawberry.field
    def all_posts(self, info: Info) -> List[PostType]:
        return Post.objects.all()

@strawberry.type
class Mutation:
    @strawberry.mutation
    def create_post(self, title: str, description: str, image_url: str, user_id: int) -> PostType:
        user = User.objects.get(id=user_id)
        return Post.objects.create(title=title, description=description, image_url=image_url, user=user)

    @strawberry.mutation
    def create_comment(self, content: str, post_id: int, user_id: int) -> CommentType:
        user = User.objects.get(id=user_id)
        post = Post.objects.get(id=post_id)
        return Comment.objects.create(content=content, user=user, post=post)

    @strawberry.mutation
    def create_reaction(self, type: str, post_id: int, user_id: int) -> ReactionType:
        user = User.objects.get(id=user_id)
        post = Post.objects.get(id=post_id)
        Reaction.objects.filter(user=user, post=post).delete()
        return Reaction.objects.create(type=type, user=user, post=post)

    @strawberry.mutation
    def create_user(self, username: str, password: str) -> UserType:
        return User.objects.create(username=username, password=password)

    @strawberry.mutation
    def login(self, username: str, password: str) -> Optional[UserType]:
        try:
            return User.objects.get(username=username, password=password)
        except User.DoesNotExist:
            return None

    @strawberry.mutation 
    def delete_reaction(self, post_id: int, user_id: int) -> bool:
        Reaction.objects.filter(post_id=post_id, user_id=user_id).delete()
        return True

    @strawberry.mutation
    def delete_post(self, post_id: int, user_id: int) -> bool:
        try:
            post = Post.objects.get(id=post_id)
            if post.user.id != user_id:
                return False
            post.delete()
            return True
        except Post.DoesNotExist:
            return False

schema = strawberry.Schema(query=Query, mutation=Mutation)

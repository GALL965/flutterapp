from django.contrib import admin
from django.urls import path
from strawberry.django.views import GraphQLView
from django.views.decorators.csrf import csrf_exempt
from randomaccess.schema import schema  # Asegúrate que este es tu schema real

urlpatterns = [
    path("admin/", admin.site.urls),
    path("graphql/", csrf_exempt(GraphQLView.as_view(schema=schema, graphiql=True))),
]

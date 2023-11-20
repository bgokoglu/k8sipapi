FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["K8sIpApi.csproj", ""]
RUN dotnet restore "./K8sIpApi.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "K8sIpApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "K8sIpApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "K8sIpApi.dll"]
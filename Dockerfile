FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /app
COPY . ./
RUN dotnet publish --configuration Release --output out
ENTRYPOINT ["dotnet", "out/ipcheck.dll"]

FROM mcr.microsoft.com/dotnet/core/sdk:latest AS build-env
# Metadata indicating an image maintainer.
LABEL maintainer="nguemechieu@live.com"
LABEL key="4205485"

RUN  echo cd  C:\Users\<username>\AppData\Roaming\MetaQuotes
WORKDIR  /Users/<username>/AppData>/AppData/Roaming/MetaQuotes
COPY . ./

RUN echo "welcome to MetaTrader 4"
RUN  echo "You can now setup your new TradeExpert software and start trading"
ENTRYPOINT [ "terminal.exe" ]

RUN  echo "app is now available and you can start your new TradeExpert software on port 5678 or 87"
CMD [" C:\Users\<username>\AppData\Roaming\MetaQuotes\Terminal.exe" , "-w"]
EXPOSE 5678:87


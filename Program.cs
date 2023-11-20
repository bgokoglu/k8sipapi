using System.Net;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () =>
{
    var ipAddress = Dns.GetHostAddresses(Dns.GetHostName())
                      .First(x => x.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                      .ToString();
    return ipAddress;
});

app.Run();
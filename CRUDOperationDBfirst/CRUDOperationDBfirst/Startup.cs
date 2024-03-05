using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CRUDOperationDBfirst.Startup))]
namespace CRUDOperationDBfirst
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

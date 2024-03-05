using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CRUDOperations.Startup))]
namespace CRUDOperations
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

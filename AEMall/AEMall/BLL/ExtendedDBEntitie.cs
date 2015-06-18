using System.IO;
using EFCachingProvider;
using EFCachingProvider.Caching;
using EFProviderWrapperToolkit;
using Models;

namespace BLL
{
    public partial class ExtendedDBModelContainer: AEMallDBEntities
    {

        public ExtendedDBModelContainer()
            : this("name=AEMallDBEntities")
        {
        }

        public ExtendedDBModelContainer(string connectionString)
            : base(EntityConnectionWrapperUtils.CreateEntityConnectionWithWrappers(
                    connectionString,
                    "EFCachingProvider"
            ))
        {
        }

        #region Caching Extensions

        private EFCachingConnection CachingConnection
        {
            get { return this.UnwrapConnection<EFCachingConnection>(); }
        }

        public ICache Cache
        {
            get { return CachingConnection.Cache; }
            set { CachingConnection.Cache = value; }
        }

        public CachingPolicy CachingPolicy
        {
            get { return CachingConnection.CachingPolicy; }
            set { CachingConnection.CachingPolicy = value; }
        }

        #endregion
    }
}

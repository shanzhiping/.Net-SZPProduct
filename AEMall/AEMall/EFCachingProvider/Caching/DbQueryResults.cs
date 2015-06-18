// Copyright (c) Microsoft Corporation.  All rights reserved.

using System;
using System.Collections.Generic;

namespace EFCachingProvider.Caching
{
    /// <summary>
    /// Represents cached query results.
    /// </summary>
    [Serializable]
    public class DbQueryResults
    {
        /// <summary>
        /// Initializes a new instance of the DbQueryResults class.
        /// </summary>
        public DbQueryResults()
        {
            this.Rows = new List<object[]>();
        }

        /// <summary>
        /// Gets the collection of rows.
        /// </summary>
        /// <value>The collection of rows.</value>
        public IList<object[]> Rows { get; private set; }
    }
}

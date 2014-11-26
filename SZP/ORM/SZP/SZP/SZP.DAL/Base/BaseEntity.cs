using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SZP.Core
{
    public abstract class BaseEntity : IEntity
    {

        public ObjectState State
        {
            get;
            set;
        }

        public abstract string EntityKey { get; }

        public abstract string EntitySetName { get; }

        List<string> _changeFields = new List<string>();

        public List<string> GetChangeFields()
        {
            return _changeFields;
        }

        public void ResetState()
        {
            _changeFields.Clear();
            this.State = ObjectState.Unchanged;
        }

        protected virtual void OnFieldChanged(string fieldName)
        {
            if (_changeFields.Contains(fieldName) == false)
            {
                _changeFields.Add(fieldName);
                this.State = ObjectState.Modified;
            }
        }
    }
}

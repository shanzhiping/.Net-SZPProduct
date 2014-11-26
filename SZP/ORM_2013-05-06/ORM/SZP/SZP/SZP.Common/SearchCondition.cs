using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Runtime.Serialization;
using System.Xml;
using System.Xml.Schema;

namespace SZP.Common
{
    [Serializable]
    [DesignerCategory("code")]
    [DebuggerStepThrough]
    [ToolboxItem(true)]
    public class SearchCondition : DataSet
    {
        #region Delegates

        public delegate void OrderFieldRowChangeEventHandler(object sender, OrderFieldRowChangeEvent e);

        public delegate void SearchConditionRowChangeEventHandler(object sender, SearchConditionRowChangeEvent e);

        #endregion

        private OrderFieldDataTable tableOrderField;
        private SearchConditionDataTable tableSearchCondition;

        public SearchCondition()
        {
            InitClass();
            CollectionChangeEventHandler schemaChangedHandler = SchemaChanged;
            Tables.CollectionChanged += schemaChangedHandler;
            Relations.CollectionChanged += schemaChangedHandler;
        }

        protected SearchCondition(SerializationInfo info, StreamingContext context)
        {
            var strSchema = ((string) (info.GetValue("XmlSchema", typeof (string))));
            if ((strSchema != null))
            {
                var ds = new DataSet();
                ds.ReadXmlSchema(new XmlTextReader(new StringReader(strSchema)));
                if ((ds.Tables["SearchCondition"] != null))
                {
                    Tables.Add(new SearchConditionDataTable(ds.Tables["SearchCondition"]));
                }
                if ((ds.Tables["OrderField"] != null))
                {
                    Tables.Add(new OrderFieldDataTable(ds.Tables["OrderField"]));
                }
                DataSetName = ds.DataSetName;
                Prefix = ds.Prefix;
                Namespace = ds.Namespace;
                Locale = ds.Locale;
                CaseSensitive = ds.CaseSensitive;
                EnforceConstraints = ds.EnforceConstraints;
                Merge(ds, false, MissingSchemaAction.Add);
                InitVars();
            }
            else
            {
                InitClass();
            }
            GetSerializationData(info, context);
            CollectionChangeEventHandler schemaChangedHandler = SchemaChanged;
            Tables.CollectionChanged += schemaChangedHandler;
            Relations.CollectionChanged += schemaChangedHandler;
        }

        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        public SearchConditionDataTable SearchConditionTable
        {
            get { return tableSearchCondition; }
        }

        [Browsable(false)]
        [DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
        public OrderFieldDataTable OrderField
        {
            get { return tableOrderField; }
        }

        public override DataSet Clone()
        {
            var cln = ((SearchCondition) (base.Clone()));
            cln.InitVars();
            return cln;
        }

        protected override bool ShouldSerializeTables()
        {
            return false;
        }

        protected override bool ShouldSerializeRelations()
        {
            return false;
        }

        protected override void ReadXmlSerializable(XmlReader reader)
        {
            Reset();
            var ds = new DataSet();
            ds.ReadXml(reader);
            if ((ds.Tables["SearchCondition"] != null))
            {
                Tables.Add(new SearchConditionDataTable(ds.Tables["SearchCondition"]));
            }
            if ((ds.Tables["OrderField"] != null))
            {
                Tables.Add(new OrderFieldDataTable(ds.Tables["OrderField"]));
            }
            DataSetName = ds.DataSetName;
            Prefix = ds.Prefix;
            Namespace = ds.Namespace;
            Locale = ds.Locale;
            CaseSensitive = ds.CaseSensitive;
            EnforceConstraints = ds.EnforceConstraints;
            Merge(ds, false, MissingSchemaAction.Add);
            InitVars();
        }

        protected override XmlSchema GetSchemaSerializable()
        {
            var stream = new MemoryStream();
            WriteXmlSchema(new XmlTextWriter(stream, null));
            stream.Position = 0;
            return XmlSchema.Read(new XmlTextReader(stream), null);
        }

        internal void InitVars()
        {
            tableSearchCondition = ((SearchConditionDataTable) (Tables["SearchCondition"]));
            if ((tableSearchCondition != null))
            {
                tableSearchCondition.InitVars();
            }
            tableOrderField = ((OrderFieldDataTable) (Tables["OrderField"]));
            if ((tableOrderField != null))
            {
                tableOrderField.InitVars();
            }
        }

        private void InitClass()
        {
            DataSetName = "SearchCondition";
            Prefix = "";
            Namespace = "http://tempuri.org/SearchCondition.xsd";
            Locale = new CultureInfo("en-US");
            CaseSensitive = false;
            EnforceConstraints = true;
            tableSearchCondition = new SearchConditionDataTable();
            Tables.Add(tableSearchCondition);
            tableOrderField = new OrderFieldDataTable();
            Tables.Add(tableOrderField);
        }

        private bool ShouldSerializeSearchCondition()
        {
            return false;
        }

        private bool ShouldSerializeOrderField()
        {
            return false;
        }

        private void SchemaChanged(object sender, CollectionChangeEventArgs e)
        {
            if ((e.Action == CollectionChangeAction.Remove))
            {
                InitVars();
            }
        }

        #region Nested type: OrderFieldDataTable

        [DebuggerStepThrough]
        public class OrderFieldDataTable : DataTable, IEnumerable
        {
            private DataColumn columns_FieldControlID;
            private DataColumn columns_FieldName;

            private DataColumn columns_Order;

            private DataColumn columns_OrderControlID;
            private DataColumn columns_TableName;

            internal OrderFieldDataTable() :
                base("OrderField")
            {
                InitClass();
            }

            internal OrderFieldDataTable(DataTable table) :
                base(table.TableName)
            {
                if ((table.CaseSensitive != table.DataSet.CaseSensitive))
                {
                    CaseSensitive = table.CaseSensitive;
                }
                if ((table.Locale.ToString() != table.DataSet.Locale.ToString()))
                {
                    Locale = table.Locale;
                }
                if ((table.Namespace != table.DataSet.Namespace))
                {
                    Namespace = table.Namespace;
                }
                Prefix = table.Prefix;
                MinimumCapacity = table.MinimumCapacity;
                DisplayExpression = table.DisplayExpression;
            }

            [Browsable(false)]
            public int Count
            {
                get { return Rows.Count; }
            }

            internal DataColumn s_TableNameColumn
            {
                get { return columns_TableName; }
            }

            internal DataColumn s_FieldNameColumn
            {
                get { return columns_FieldName; }
            }

            internal DataColumn s_OrderColumn
            {
                get { return columns_Order; }
            }

            internal DataColumn s_FieldControlIDColumn
            {
                get { return columns_FieldControlID; }
            }

            internal DataColumn s_OrderControlIDColumn
            {
                get { return columns_OrderControlID; }
            }

            public OrderFieldRow this[int index]
            {
                get { return ((OrderFieldRow) (Rows[index])); }
            }

            #region IEnumerable Members

            public IEnumerator GetEnumerator()
            {
                return Rows.GetEnumerator();
            }

            #endregion

            public event OrderFieldRowChangeEventHandler OrderFieldRowChanged;

            public event OrderFieldRowChangeEventHandler OrderFieldRowChanging;

            public event OrderFieldRowChangeEventHandler OrderFieldRowDeleted;

            public event OrderFieldRowChangeEventHandler OrderFieldRowDeleting;

            public void AddOrderFieldRow(OrderFieldRow row)
            {
                Rows.Add(row);
            }

            public OrderFieldRow AddOrderFieldRow(string s_TableName, string s_FieldName, string s_Order,
                                                  string s_FieldControlID, string s_OrderControlID)
            {
                var rowOrderFieldRow = ((OrderFieldRow) (NewRow()));
                rowOrderFieldRow.ItemArray = new object[]
                                                 {
                                                     s_TableName,
                                                     s_FieldName,
                                                     s_Order,
                                                     s_FieldControlID,
                                                     s_OrderControlID
                                                 };
                Rows.Add(rowOrderFieldRow);
                return rowOrderFieldRow;
            }

            public override DataTable Clone()
            {
                var cln = ((OrderFieldDataTable) (base.Clone()));
                cln.InitVars();
                return cln;
            }

            protected override DataTable CreateInstance()
            {
                return new OrderFieldDataTable();
            }

            internal void InitVars()
            {
                columns_TableName = Columns["s_TableName"];
                columns_FieldName = Columns["s_FieldName"];
                columns_Order = Columns["s_Order"];
                columns_FieldControlID = Columns["s_FieldControlID"];
                columns_OrderControlID = Columns["s_OrderControlID"];
            }

            private void InitClass()
            {
                columns_TableName = new DataColumn("s_TableName", typeof (string), null, MappingType.Element);
                Columns.Add(columns_TableName);
                columns_FieldName = new DataColumn("s_FieldName", typeof (string), null, MappingType.Element);
                Columns.Add(columns_FieldName);
                columns_Order = new DataColumn("s_Order", typeof (string), null, MappingType.Element);
                Columns.Add(columns_Order);
                columns_FieldControlID = new DataColumn("s_FieldControlID", typeof (string), null, MappingType.Element);
                Columns.Add(columns_FieldControlID);
                columns_OrderControlID = new DataColumn("s_OrderControlID", typeof (string), null, MappingType.Element);
                Columns.Add(columns_OrderControlID);
            }

            public OrderFieldRow NewOrderFieldRow()
            {
                return ((OrderFieldRow) (NewRow()));
            }

            protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
            {
                return new OrderFieldRow(builder);
            }

            protected override Type GetRowType()
            {
                return typeof (OrderFieldRow);
            }

            protected override void OnRowChanged(DataRowChangeEventArgs e)
            {
                base.OnRowChanged(e);
                if ((OrderFieldRowChanged != null))
                {
                    OrderFieldRowChanged(this, new OrderFieldRowChangeEvent(((OrderFieldRow) (e.Row)), e.Action));
                }
            }

            protected override void OnRowChanging(DataRowChangeEventArgs e)
            {
                base.OnRowChanging(e);
                if ((OrderFieldRowChanging != null))
                {
                    OrderFieldRowChanging(this, new OrderFieldRowChangeEvent(((OrderFieldRow) (e.Row)), e.Action));
                }
            }

            protected override void OnRowDeleted(DataRowChangeEventArgs e)
            {
                base.OnRowDeleted(e);
                if ((OrderFieldRowDeleted != null))
                {
                    OrderFieldRowDeleted(this, new OrderFieldRowChangeEvent(((OrderFieldRow) (e.Row)), e.Action));
                }
            }

            protected override void OnRowDeleting(DataRowChangeEventArgs e)
            {
                base.OnRowDeleting(e);
                if ((OrderFieldRowDeleting != null))
                {
                    OrderFieldRowDeleting(this, new OrderFieldRowChangeEvent(((OrderFieldRow) (e.Row)), e.Action));
                }
            }

            public void RemoveOrderFieldRow(OrderFieldRow row)
            {
                Rows.Remove(row);
            }
        }

        #endregion

        #region Nested type: OrderFieldRow

        [DebuggerStepThrough]
        public class OrderFieldRow : DataRow
        {
            private readonly OrderFieldDataTable tableOrderField;

            internal OrderFieldRow(DataRowBuilder rb) :
                base(rb)
            {
                tableOrderField = ((OrderFieldDataTable) (Table));
            }

            public string s_TableName
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableOrderField.s_TableNameColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableOrderField.s_TableNameColumn] = value; }
            }

            public string s_FieldName
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableOrderField.s_FieldNameColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableOrderField.s_FieldNameColumn] = value; }
            }

            public string s_Order
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableOrderField.s_OrderColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableOrderField.s_OrderColumn] = value; }
            }

            public string s_FieldControlID
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableOrderField.s_FieldControlIDColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableOrderField.s_FieldControlIDColumn] = value; }
            }

            public string s_OrderControlID
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableOrderField.s_OrderControlIDColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableOrderField.s_OrderControlIDColumn] = value; }
            }

            public bool Iss_TableNameNull()
            {
                return IsNull(tableOrderField.s_TableNameColumn);
            }

            public void Sets_TableNameNull()
            {
                this[tableOrderField.s_TableNameColumn] = Convert.DBNull;
            }

            public bool Iss_FieldNameNull()
            {
                return IsNull(tableOrderField.s_FieldNameColumn);
            }

            public void Sets_FieldNameNull()
            {
                this[tableOrderField.s_FieldNameColumn] = Convert.DBNull;
            }

            public bool Iss_OrderNull()
            {
                return IsNull(tableOrderField.s_OrderColumn);
            }

            public void Sets_OrderNull()
            {
                this[tableOrderField.s_OrderColumn] = Convert.DBNull;
            }

            public bool Iss_FieldControlIDNull()
            {
                return IsNull(tableOrderField.s_FieldControlIDColumn);
            }

            public void Sets_FieldControlIDNull()
            {
                this[tableOrderField.s_FieldControlIDColumn] = Convert.DBNull;
            }

            public bool Iss_OrderControlIDNull()
            {
                return IsNull(tableOrderField.s_OrderControlIDColumn);
            }

            public void Sets_OrderControlIDNull()
            {
                this[tableOrderField.s_OrderControlIDColumn] = Convert.DBNull;
            }
        }

        #endregion

        #region Nested type: OrderFieldRowChangeEvent

        [DebuggerStepThrough]
        public class OrderFieldRowChangeEvent : EventArgs
        {
            private readonly DataRowAction eventAction;
            private readonly OrderFieldRow eventRow;

            public OrderFieldRowChangeEvent(OrderFieldRow row, DataRowAction action)
            {
                eventRow = row;
                eventAction = action;
            }

            public OrderFieldRow Row
            {
                get { return eventRow; }
            }

            public DataRowAction Action
            {
                get { return eventAction; }
            }
        }

        #endregion

        #region Nested type: SearchConditionDataTable

        [DebuggerStepThrough]
        public class SearchConditionDataTable : DataTable, IEnumerable
        {
            private DataColumn columns_Compare;

            private DataColumn columns_ControlID;
            private DataColumn columns_FieldName;
            private DataColumn columns_TableName;
            private DataColumn columns_Type;
            private DataColumn columns_Value;

            internal SearchConditionDataTable() :
                base("SearchCondition")
            {
                InitClass();
            }

            internal SearchConditionDataTable(DataTable table) :
                base(table.TableName)
            {
                if ((table.CaseSensitive != table.DataSet.CaseSensitive))
                {
                    CaseSensitive = table.CaseSensitive;
                }
                if ((table.Locale.ToString() != table.DataSet.Locale.ToString()))
                {
                    Locale = table.Locale;
                }
                if ((table.Namespace != table.DataSet.Namespace))
                {
                    Namespace = table.Namespace;
                }
                Prefix = table.Prefix;
                MinimumCapacity = table.MinimumCapacity;
                DisplayExpression = table.DisplayExpression;
            }

            [Browsable(false)]
            public int Count
            {
                get { return Rows.Count; }
            }

            internal DataColumn s_TableNameColumn
            {
                get { return columns_TableName; }
            }

            internal DataColumn s_FieldNameColumn
            {
                get { return columns_FieldName; }
            }

            internal DataColumn s_CompareColumn
            {
                get { return columns_Compare; }
            }

            internal DataColumn s_ValueColumn
            {
                get { return columns_Value; }
            }

            internal DataColumn s_TypeColumn
            {
                get { return columns_Type; }
            }

            internal DataColumn s_ControlIDColumn
            {
                get { return columns_ControlID; }
            }

            public SearchConditionRow this[int index]
            {
                get { return ((SearchConditionRow) (Rows[index])); }
            }

            #region IEnumerable Members

            public IEnumerator GetEnumerator()
            {
                return Rows.GetEnumerator();
            }

            #endregion

            public event SearchConditionRowChangeEventHandler SearchConditionRowChanged;

            public event SearchConditionRowChangeEventHandler SearchConditionRowChanging;

            public event SearchConditionRowChangeEventHandler SearchConditionRowDeleted;

            public event SearchConditionRowChangeEventHandler SearchConditionRowDeleting;

            public void AddSearchConditionRow(SearchConditionRow row)
            {
                Rows.Add(row);
            }

            public SearchConditionRow AddSearchConditionRow(string s_TableName, string s_FieldName, string s_Compare,
                                                            string s_Value, string s_Type, string s_ControlID)
            {
                var rowSearchConditionRow = ((SearchConditionRow) (NewRow()));
                rowSearchConditionRow.ItemArray = new object[]
                                                      {
                                                          s_TableName,
                                                          s_FieldName,
                                                          s_Compare,
                                                          s_Value,
                                                          s_Type,
                                                          s_ControlID
                                                      };
                Rows.Add(rowSearchConditionRow);
                return rowSearchConditionRow;
            }

            public override DataTable Clone()
            {
                var cln = ((SearchConditionDataTable) (base.Clone()));
                cln.InitVars();
                return cln;
            }

            protected override DataTable CreateInstance()
            {
                return new SearchConditionDataTable();
            }

            internal void InitVars()
            {
                columns_TableName = Columns["s_TableName"];
                columns_FieldName = Columns["s_FieldName"];
                columns_Compare = Columns["s_Compare"];
                columns_Value = Columns["s_Value"];
                columns_Type = Columns["s_Type"];
                columns_ControlID = Columns["s_ControlID"];
            }

            private void InitClass()
            {
                columns_TableName = new DataColumn("s_TableName", typeof (string), null, MappingType.Element);
                Columns.Add(columns_TableName);
                columns_FieldName = new DataColumn("s_FieldName", typeof (string), null, MappingType.Element);
                Columns.Add(columns_FieldName);
                columns_Compare = new DataColumn("s_Compare", typeof (string), null, MappingType.Element);
                Columns.Add(columns_Compare);
                columns_Value = new DataColumn("s_Value", typeof (string), null, MappingType.Element);
                Columns.Add(columns_Value);
                columns_Type = new DataColumn("s_Type", typeof (string), null, MappingType.Element);
                Columns.Add(columns_Type);
                columns_ControlID = new DataColumn("s_ControlID", typeof (string), null, MappingType.Element);
                Columns.Add(columns_ControlID);
            }

            public SearchConditionRow NewSearchConditionRow()
            {
                return ((SearchConditionRow) (NewRow()));
            }

            protected override DataRow NewRowFromBuilder(DataRowBuilder builder)
            {
                return new SearchConditionRow(builder);
            }

            protected override Type GetRowType()
            {
                return typeof (SearchConditionRow);
            }

            protected override void OnRowChanged(DataRowChangeEventArgs e)
            {
                base.OnRowChanged(e);
                if ((SearchConditionRowChanged != null))
                {
                    SearchConditionRowChanged(this,
                                              new SearchConditionRowChangeEvent(((SearchConditionRow) (e.Row)), e.Action));
                }
            }

            protected override void OnRowChanging(DataRowChangeEventArgs e)
            {
                base.OnRowChanging(e);
                if ((SearchConditionRowChanging != null))
                {
                    SearchConditionRowChanging(this,
                                               new SearchConditionRowChangeEvent(((SearchConditionRow) (e.Row)),
                                                                                 e.Action));
                }
            }

            protected override void OnRowDeleted(DataRowChangeEventArgs e)
            {
                base.OnRowDeleted(e);
                if ((SearchConditionRowDeleted != null))
                {
                    SearchConditionRowDeleted(this,
                                              new SearchConditionRowChangeEvent(((SearchConditionRow) (e.Row)), e.Action));
                }
            }

            protected override void OnRowDeleting(DataRowChangeEventArgs e)
            {
                base.OnRowDeleting(e);
                if ((SearchConditionRowDeleting != null))
                {
                    SearchConditionRowDeleting(this,
                                               new SearchConditionRowChangeEvent(((SearchConditionRow) (e.Row)),
                                                                                 e.Action));
                }
            }

            public void RemoveSearchConditionRow(SearchConditionRow row)
            {
                Rows.Remove(row);
            }
        }

        #endregion

        #region Nested type: SearchConditionRow

        [DebuggerStepThrough]
        public class SearchConditionRow : DataRow
        {
            private readonly SearchConditionDataTable tableSearchCondition;

            internal SearchConditionRow(DataRowBuilder rb) :
                base(rb)
            {
                tableSearchCondition = ((SearchConditionDataTable) (Table));
            }

            public string s_TableName
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_TableNameColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_TableNameColumn] = value; }
            }

            public string s_FieldName
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_FieldNameColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_FieldNameColumn] = value; }
            }

            public string s_Compare
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_CompareColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_CompareColumn] = value; }
            }

            public string s_Value
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_ValueColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_ValueColumn] = value; }
            }

            public string s_Type
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_TypeColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_TypeColumn] = value; }
            }

            public string s_ControlID
            {
                get
                {
                    try
                    {
                        return ((string) (this[tableSearchCondition.s_ControlIDColumn]));
                    }
                    catch (InvalidCastException e)
                    {
                        throw new StrongTypingException("无法获取值，因为它是 DBNull。", e);
                    }
                }
                set { this[tableSearchCondition.s_ControlIDColumn] = value; }
            }

            public bool Iss_TableNameNull()
            {
                return IsNull(tableSearchCondition.s_TableNameColumn);
            }

            public void Sets_TableNameNull()
            {
                this[tableSearchCondition.s_TableNameColumn] = Convert.DBNull;
            }

            public bool Iss_FieldNameNull()
            {
                return IsNull(tableSearchCondition.s_FieldNameColumn);
            }

            public void Sets_FieldNameNull()
            {
                this[tableSearchCondition.s_FieldNameColumn] = Convert.DBNull;
            }

            public bool Iss_CompareNull()
            {
                return IsNull(tableSearchCondition.s_CompareColumn);
            }

            public void Sets_CompareNull()
            {
                this[tableSearchCondition.s_CompareColumn] = Convert.DBNull;
            }

            public bool Iss_ValueNull()
            {
                return IsNull(tableSearchCondition.s_ValueColumn);
            }

            public void Sets_ValueNull()
            {
                this[tableSearchCondition.s_ValueColumn] = Convert.DBNull;
            }

            public bool Iss_TypeNull()
            {
                return IsNull(tableSearchCondition.s_TypeColumn);
            }

            public void Sets_TypeNull()
            {
                this[tableSearchCondition.s_TypeColumn] = Convert.DBNull;
            }

            public bool Iss_ControlIDNull()
            {
                return IsNull(tableSearchCondition.s_ControlIDColumn);
            }

            public void Sets_ControlIDNull()
            {
                this[tableSearchCondition.s_ControlIDColumn] = Convert.DBNull;
            }
        }

        #endregion

        #region Nested type: SearchConditionRowChangeEvent

        [DebuggerStepThrough]
        public class SearchConditionRowChangeEvent : EventArgs
        {
            private readonly DataRowAction eventAction;
            private readonly SearchConditionRow eventRow;

            public SearchConditionRowChangeEvent(SearchConditionRow row, DataRowAction action)
            {
                eventRow = row;
                eventAction = action;
            }

            public SearchConditionRow Row
            {
                get { return eventRow; }
            }

            public DataRowAction Action
            {
                get { return eventAction; }
            }
        }

        #endregion
    }
}
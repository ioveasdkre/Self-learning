using Npgsql;
using System.Collections.Generic;
using System.Data;
using System.Web.Services;
using System.Text;


namespace LeafletCanvasMarkers
{
    /// <summary>
    ///myData 的摘要描述
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允許使用 ASP.NET AJAX 從指令碼呼叫此 Web 服務，請取消註解下列一行。
    [System.Web.Script.Services.ScriptService]
    public class myData : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string GetPullution()
        {
            DataSet ResultDataSet = null;
            StringBuilder _RunSql = new StringBuilder("SELECT id as I , ST_X(ST_GeometryN(ST_Transform(geom,4326),1)) as x , ST_Y(ST_GeometryN(ST_Transform(geom,4326),1)) as y FROM public.\"污染源總圖層_121\"");
            NpgsqlParameter[] _RunSqlParm = new NpgsqlParameter[0];
            ResultDataSet = (DataSet)ExecuteDataSet(CommandType.Text, _RunSql.ToString(), _RunSqlParm);
            return GetJson(ResultDataSet.Tables[0]);
        }

        [WebMethod]
        public string GetPullutionTM2()
        {
            DataSet ResultDataSet = null;
            StringBuilder _RunSql = new StringBuilder("SELECT id as I , tm2x as x , tm2y as y FROM public.\"污染源總圖層_121\"");
            NpgsqlParameter[] _RunSqlParm = new NpgsqlParameter[0];
            ResultDataSet = (DataSet)ExecuteDataSet(CommandType.Text, _RunSql.ToString(), _RunSqlParm);
            return GetJson(ResultDataSet.Tables[0]);
        }

        public static IDbConnection GetNewConnPostGis()
        {
            string connectionString = "Server=postgis.eri.com.tw;Port=5432;User Id=postgres;Password=12686505;Database=ems";
            NpgsqlConnection conn = new NpgsqlConnection(connectionString);
            return conn;
        }

        private static void PrepareCommand(NpgsqlCommand cmd, NpgsqlConnection conn, NpgsqlTransaction trans, CommandType cmdType, string cmdText, NpgsqlParameter[] cmdParms)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();

            cmd.Connection = conn;
            cmd.CommandText = cmdText;

            if (trans != null)
                cmd.Transaction = trans;

            cmd.CommandType = cmdType;

            if (cmdParms != null)
            {
                foreach (NpgsqlParameter parm in cmdParms)
                    cmd.Parameters.Add(parm);
            }
        }

        public static object ExecuteDataSet(CommandType cmdType, string cmdText, params NpgsqlParameter[] commandParameters)
        {
            object val = null;
            NpgsqlCommand cmd = new NpgsqlCommand();
            using (NpgsqlConnection _Conn = GetNewConnPostGis() as NpgsqlConnection)
            {
                PrepareCommand(cmd, _Conn, null, cmdType, cmdText, commandParameters);
                NpgsqlDataAdapter adapter = new NpgsqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                val = ds;
            }
            return val;
        }

        public string GetJson(DataTable dt)
        {
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                { row.Add(col.ColumnName, dr[col]); }
                rows.Add(row);
            }
            serializer.MaxJsonLength = int.MaxValue;
            return serializer.Serialize(rows);
        }
    }
}

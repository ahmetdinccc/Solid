abstract class DataBase {
  void sorgu(String sql);
}

class MySqlDataBase {
  void SorguCalistir1(String sql) {
    print("MySql Çalışıyor = ${sql}");
  }
}

class PostgreSqlDataBase {
  void SorguCalistir2(String sql) {
    print("Postgre Sql Çalışıyor = ${sql}");
  }
}

class MySqlAdapter implements DataBase {
  @override
  MySqlDataBase? mysqldatabase;
  MySqlAdapter(this.mysqldatabase);
  void sorgu(String sql) {
    mysqldatabase?.SorguCalistir1(sql);
  }
}

class PostgreSqlAdapter implements DataBase {
  @override
  PostgreSqlDataBase? postgresqldatabase;
  PostgreSqlAdapter(this.postgresqldatabase);

  void sorgu(String sql) {
    postgresqldatabase?.SorguCalistir2(sql);
  }
}

class KullaniciDataBase {
  DataBase? database;
  KullaniciDataBase(this.database);
  void SorguCalistir3(String sql) {
    database?.sorgu(sql);
  }
}

void main(List<String> args) {
  MySqlDataBase mysqldatabase = MySqlDataBase();
  MySqlAdapter mysqladapter = MySqlAdapter(mysqldatabase);
//-----------------------------
  PostgreSqlDataBase postgresqldatabase = PostgreSqlDataBase();
  PostgreSqlAdapter postgresqladapter = PostgreSqlAdapter(postgresqldatabase);
//-----------------------------
  KullaniciDataBase kullanicidatabase1 = KullaniciDataBase(mysqladapter);
  kullanicidatabase1.SorguCalistir3("select*from user 1");
//-----------------------------
  KullaniciDataBase kullanicidatabase2 = KullaniciDataBase(postgresqladapter);
  kullanicidatabase2.SorguCalistir3("select*from user 2");
}


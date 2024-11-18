const sql = require('mssql');

const config = {
    user: 'tu_usuario',
    password: 'tu_contraseña',
    server: 'localhost', // Cambia si es otro servidor
    database: 'Barberia',
    options: {
        encrypt: false,
        trustServerCertificate: true,
    },
};

async function conectar() {
    let pool;
    try {
        pool = await sql.connect(config);
        console.log('Conexión exitosa a la base de datos');
        
  
        
    } catch (err) {
        console.error('Error conectando a la base de datos:', err);
    } finally {
        if (pool) {
            await pool.close();
            console.log('Conexión cerrada');
        }
    }
}

conectar();

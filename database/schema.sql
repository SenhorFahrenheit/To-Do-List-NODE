-- Tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,  -- A senha deve ser criptografada
    foto VARCHAR(255)  -- Caminho para a foto do usuário
);

-- Tabela de tarefas
CREATE TABLE tarefas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    concluida BOOLEAN DEFAULT FALSE,
    data_inicio DATETIME NOT NULL,
    data_conclusao DATETIME,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);

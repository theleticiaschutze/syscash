INSERT INTO `categoria` (`descricao`, `tipo`, `usuario_id`) VALUES
('Salario', 1, 1),        -- id 1
('Aluguel Garagem', 1, 1), -- id 2
('Luz', 2, 1),             -- id 3
('Água', 2, 1),           -- id 4
('Internet', 2, 1),       -- id 5
('Mercado', 2, 1),         -- id 6
('Prestação Carro', 2, 1), -- id 7
('Academia', 2, 1);        -- id 8

INSERT INTO `favorecido` (`nome`, `usuario_id`) VALUES
('Trabalho', 1),           -- id 1
('Locatário Garagem', 1),  -- id 2
('CELESC', 1),             -- id 3
('SAMAE', 1),              -- id 4
('Claro Internet', 1),		-- id 5
('Supermercado', 1),       -- id 6
('Financeira Carro', 1),   -- id 7
('UFIT', 1);         	  -- id 8


INSERT INTO `conta_receber` (`descricao`, `favorecido`, `valor`, `data_vencimento`, `categoria_id`, `usuario_id`) VALUES

('Salario Janeiro', 1, 5500.00, '2026-01-05', 1, 1),
('Aluguel Garagem Janeiro', 2, 250.00, '2026-01-10', 2, 1),

('Salario Fevereiro', 1, 5500.00, '2026-02-05', 1, 1),
('Aluguel Garagem Fevereiro', 2, 250.00, '2026-02-10', 2, 1),

('Salario Março', 1, 5500.00, '2026-03-05', 1, 1),
('Aluguel Garagem Março', 2, 250.00, '2026-03-10', 2, 1),

('Salario Abril', 1, 5500.00, '2026-04-05', 1, 1),
('Aluguel Garagem Abril', 2, 250.00, '2026-04-10', 2, 1),

('Salario Maio', 1, 5500.00, '2026-05-05', 1, 1),
('Aluguel Garagem Maio', 2, 250.00, '2026-05-10', 2, 1),

('Salario Junho', 1, 5500.00, '2026-06-05', 1, 1),
('Aluguel Garagem Junho', 2, 250.00, '2026-06-10', 2, 1),

('Salario Julho', 1, 5500.00, '2026-07-05', 1, 1),
('Aluguel Garagem Julho', 2, 250.00, '2026-07-10', 2, 1),
('Salario Agosto', 1, 5500.00, '2026-08-05', 1, 1),
('Aluguel Garagem Agosto', 2, 250.00, '2026-08-10', 2, 1),
('Salario Setembro', 1, 5500.00, '2026-09-05', 1, 1),
('Aluguel Garagem Setembro', 2, 250.00, '2026-09-10', 2, 1),
('Salario Outubro', 1, 5500.00, '2026-10-05', 1, 1),
('Aluguel Garagem Outubro', 2, 250.00, '2026-10-10', 2, 1),
('Salario Novembro', 1, 5500.00, '2026-11-05', 1, 1),
('Aluguel Garagem Novembro', 2, 250.00, '2026-11-10', 2, 1),
('Salario Dezembro', 1, 5500.00, '2026-12-05', 1, 1),
('Aluguel Garagem Dezembro', 2, 250.00, '2026-12-10', 2, 1);


INSERT INTO `conta_pagar` (`descricao`, `favorecido`, `valor`, `data_vencimento`, `categoria_id`, `usuario_id`) VALUES

('Luz Janeiro', 3, 180.00, '2026-01-10', 3, 1),
('Água Janeiro', 4, 90.00, '2026-01-15', 4, 1),
('Internet Janeiro', 5, 120.00, '2026-01-20', 5, 1),
('Mercado Janeiro', 6, 800.00, '2026-01-25', 6, 1),
('Prestação Carro Janeiro', 7, 950.00, '2026-01-05', 7, 1),
('Academia Janeiro', 8, 100.00, '2026-01-10', 8, 1),

('Luz Fevereiro', 3, 165.00, '2026-02-10', 3, 1),
('Água Fevereiro', 4, 85.00, '2026-02-15', 4, 1),
('Internet Fevereiro', 5, 120.00, '2026-02-20', 5, 1),
('Mercado Fevereiro', 6, 750.00, '2026-02-25', 6, 1),
('Prestação Carro Fevereiro', 7, 950.00, '2026-02-05', 7, 1),
('Academia Fevereiro', 8, 100.00, '2026-02-10', 8, 1),

('Luz Março', 3, 200.00, '2026-03-10', 3, 1),
('Água Março', 4, 95.00, '2026-03-15', 4, 1),
('Internet Março', 5, 120.00, '2026-03-20', 5, 1),
('Mercado Março', 6, 820.00, '2026-03-25', 6, 1),
('Prestação Carro Março', 7, 950.00, '2026-03-05', 7, 1),
('Academia Março', 8, 100.00, '2026-03-10', 8, 1),

('Luz Abril', 3, 175.00, '2026-04-10', 3, 1),
('Água Abril', 4, 88.00, '2026-04-15', 4, 1),
('Internet Abril', 5, 120.00, '2026-04-20', 5, 1),
('Mercado Abril', 6, 780.00, '2026-04-25', 6, 1),
('Prestação Carro Abril', 7, 950.00, '2026-04-05', 7, 1),
('Academia Abril', 8, 100.00, '2026-04-10', 8, 1),

('Luz Maio', 3, 190.00, '2026-05-10', 3, 1),
('Água Maio', 4, 92.00, '2026-05-15', 4, 1),
('Internet Maio', 5, 120.00, '2026-05-20', 5, 1),
('Mercado Maio', 6, 810.00, '2026-05-25', 6, 1),
('Prestação Carro Maio', 7, 950.00, '2026-05-05', 7, 1),
('Academia Maio', 8, 100.00, '2026-05-10', 8, 1),

('Luz Junho', 3, 185.00, '2026-06-10', 3, 1),
('Água Junho', 4, 87.00, '2026-06-15', 4, 1),
('Internet Junho', 5, 120.00, '2026-06-20', 5, 1),
('Mercado Junho', 6, 795.00, '2026-06-25', 6, 1),
('Prestação Carro Junho', 7, 950.00, '2026-06-05', 7, 1),
('Academia Junho', 8, 100.00, '2026-06-10', 8, 1),

('Internet Julho', 5, 120.00, '2026-07-20', 5, 1),
('Prestação Carro Julho', 7, 950.00, '2026-07-05', 7, 1),
('Internet Agosto', 5, 120.00, '2026-08-20', 5, 1),
('Prestação Carro Agosto', 7, 950.00, '2026-08-05', 7, 1),
('Internet Setembro', 5, 120.00, '2026-09-20', 5, 1),
('Prestação Carro Setembro', 7, 950.00, '2026-09-05', 7, 1),
('Internet Outubro', 5, 120.00, '2026-10-20', 5, 1),
('Prestação Carro Outubro', 7, 950.00, '2026-10-05', 7, 1),
('Internet Novembro', 5, 120.00, '2026-11-20', 5, 1),
('Prestação Carro Novembro', 7, 950.00, '2026-11-05', 7, 1),
('Internet Dezembro', 5, 120.00, '2026-12-20', 5, 1),
('Prestação Carro Dezembro', 7, 950.00, '2026-12-05', 7, 1);
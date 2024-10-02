clc; % Очистка командного окна
clear; % Очистка переменных

% Параметры улитки Паскаля
a = 3; % Параметр a для уравнения улитки
b = 2; % Параметр b для уравнения улитки

% Инициализация переменных
N = 1000; % Количество точек
phi = linspace(0, 2 * pi, N); % Углы от 0 до 2π
r = a * cos(phi) + b; % Вычисление радиуса

% Создание нового окна для графика с настройками
figure('Color', 'w', 'Position', [100, 100, 600, 600]); % Установка белого фона и размера окна

% Построение графика в полярных координатах
polarplot(phi, r, 'b-', 'LineWidth', 2); % Построение графика: фиолетовая штриховая линия

% Дополнительные настройки графика
title('Построение Улитки Паскаля (Вариант 2)', 'FontSize', 16, 'FontWeight', 'bold', 'Color', 'r'); % Красный заголовок с увеличенным шрифтом
ax = gca; % Получение текущей оси

% Настройка осей
ax.ThetaTickLabel = {'0', '\pi/2', '\pi', '3\pi/2', '2\pi'}; % Угловые метки
ax.RLim = [0 max(r) + 1]; % Радиальные границы
ax.ThetaGrid = 'on'; % Включение угловой сетки
ax.RGrid = 'on'; % Включение радиальной сетки
ax.GridColor = [0.3, 0.3, 0.3]; % Тёмно-серая сетка
ax.GridAlpha = 0.6; % Прозрачность сетки

% Включение сетки и отображение графика
grid on; % Включение сетки для полярного графика
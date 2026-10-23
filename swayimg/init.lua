-- Загружать соседние файлы из той же папки
swayimg.imagelist.adjacent = true

-- Текстовая плашка: мельче и аккуратнее
swayimg.text.size = 10 -- размер шрифта в пикселях (было 14)
swayimg.text.color = 0xffe0e0e0 -- цвет текста (ARGB)
swayimg.text.background = 0xb0000000 -- полупрозрачный чёрный фон (ARGB)
swayimg.text.shadow = 0x80000000 -- тень для читаемости
swayimg.text.padding = 8 -- отступ от краёв окна

-- Листание назад: h и стрелка влево
swayimg.viewer.on_key({ "h", "Left" }, function()
	swayimg.viewer.open("prev")
end)

-- Листание вперёд: l openи стрелка вправо
swayimg.viewer.on_key({ "l", "Right" }, function()
	swayimg.viewer.open("next")
end)

import 'dart:developer';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'models.dart';


class RemangaParsers {

  //searche
Future<List<MangaSearchResult>> searchManga(String query) async {
  final url = 'https://api.remanga.org/api/search/?query=$query&count=100&field=titles&page=1';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

    if (responseData['content'] is List) {
      final List<dynamic> mangaDataList = responseData['content'];
      return mangaDataList.map((json) => MangaSearchResult.fromJson(json)).toList();
    } else {
      throw Exception('Список манги не найден');
    }
  } else {
    throw Exception('Не удалось выполнить поиск манги');
  }
}

  ///Получение подробностей о манге
Future<MangaContexDetails> getMangaDetails(String mangaName) async {
  final url =
      'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/$mangaName.json?content=manga&title=$mangaName';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));
    final dynamic content = responseData['pageProps']['fallbackData']['content'];

    return MangaContexDetails.fromJson(content);
  } else {
    throw Exception('Не удалось загрузить детали манги');
  }
}


  //Горячие новинки
  Future<List<Title>> hotUpdate() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/hot-updates.json?content=manga';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  // получение кол-во манги по жанру

  Future<List<Title>> mangasForType(int type,int count) async {
    final url =
        'https://api.remanga.org/api/search/catalog/?content=manga&count=$count&ordering=-rating&page=1&types=$type';
    final response = await http.get(Uri.parse(url), headers: {"Accept-Charset": "utf-8"});

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));
      final List<dynamic> mangaData = responseData['content'];

      return mangaData.map((json) => Title.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load manga by genre');
    }
  }


  //получение глав манги
  Future<List<MangaChapterPage>> getMangaChapterPages(int branchId) async {
  final url = 'https://api.remanga.org/api/titles/chapters/$branchId/';
  final response = await http.get(Uri.parse(url), headers: {
    'Content-Type': 'application/json; charset=UTF-8',
  });

  if (response.statusCode == 200) {
    final dynamic responseData = jsonDecode(response.body);
    final List<dynamic> pagesData = responseData['content']['pages'];

    return pagesData
        .map((json) => MangaChapterPage.fromJson(json))
        .toList();
  } else {
    throw Exception('Failed to load manga chapter pages');
  }
}

  //получение глав манги
  Future<List<MangaChapter>> getMangaChapters(int branchId) async {
    final url =
        'https://api.remanga.org/api/titles/chapters/?branch_id=$branchId&ordering=-index&user_data=1&count=10000&page=1';
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    });

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(response.body);
      final List<dynamic> chaptersData = responseData['content'];

      return chaptersData.map((json) => MangaChapter.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load manga chapters');
    }
  }




  ///Новый сезон
  Future<List<Title>> newSeasonTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/20.json?content=manga&id=20';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///В трендже
  Future<List<Title>> trendingTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/35.json?content=manga&id=35';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Популярно сегодня
  Future<List<Title>> popularTodayTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/22.json?content=manga&id=22';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Интересные новинки
  Future<List<Title>> interestingNewTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/top-new-interest.json?content=manga&id=top-new-interest';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Топ Китая
  Future<List<Title>> topChinaTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/16.json?content=manga&id=16';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Топ Кореи
  Future<List<Title>> topKoreaTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/top-korea.json?content=manga&id=top-korea';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Топ Японии
  Future<List<Title>> topJapanTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/18.json?content=manga&id=18';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///С аниме
  Future<List<Title>> animeTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/19.json?content=manga&id=19';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        throw Exception('Список заголовков не найден');
      }
    } else {
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Очень много глав
  Future<List<Title>> mangaTitles() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/25.json?content=manga&id=25';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        throw Exception('Список заголовков не найден');
      }
    } else {
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Свежие главы
  Future<List<Title>> recentChapters() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/26.json?content=manga&id=26';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        throw Exception('Список заголовков не найден');
      }
    } else {
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  ///Новинки
  Future<List<Title>> newProducts() async {
    const url =
        'https://remanga.org/_next/data/l-s1HEJiSgvd-2FocyV1a/ru/manga/list/new-titles.json?content=manga&id=new-titles';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['pageProps']['fallbackData']['titles'] is List) {
        final List<dynamic> titlesData =
            responseData['pageProps']['fallbackData']['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        throw Exception('Список заголовков не найден');
      }
    } else {
      throw Exception('Не удалось загрузить список заголовков');
    }
  }

  Future<List<MangaCategory>> getMangaCategories() async {
    try {
      final List<MangaCategory> categories = [
        MangaCategory(id: 47, name: "Алхимия"),
        MangaCategory(id: 121, name: "Амнезия"),
        MangaCategory(id: 48, name: "Ангелы"),
        MangaCategory(id: 127, name: "Аниме"),
        MangaCategory(id: 26, name: "Антигерой"),
        MangaCategory(id: 49, name: "Антиутопия"),
        MangaCategory(id: 50, name: "Апокалипсис"),
        MangaCategory(id: 117, name: "Аристократия"),
        MangaCategory(id: 51, name: "Армия"),
        MangaCategory(id: 52, name: "Артефакты"),
        MangaCategory(id: 45, name: "Боги"),
        MangaCategory(id: 122, name: "Бои на мечах"),
        MangaCategory(id: 54, name: "Борьба за власть"),
        MangaCategory(id: 55, name: "Будущее"),
        MangaCategory(id: 6, name: "В цвете"),
        MangaCategory(id: 5, name: "Веб"),
        MangaCategory(id: 56, name: "Вестерн"),
        MangaCategory(id: 35, name: "Видеоигры"),
        MangaCategory(id: 57, name: "Владыка демонов"),
        MangaCategory(id: 59, name: "Волшебные существа"),
        MangaCategory(id: 60, name: "Воспоминания из другого мира"),
        MangaCategory(id: 41, name: "Выживание"),
        MangaCategory(id: 63, name: "ГГ женщина"),
        MangaCategory(id: 110, name: "ГГ имба"),
        MangaCategory(id: 64, name: "ГГ мужчина"),
        MangaCategory(id: 123, name: "ГГ не человек"),
        MangaCategory(id: 61, name: "Геймеры"),
        MangaCategory(id: 62, name: "Гильдии"),
        MangaCategory(id: 23, name: "Горничные"),
        MangaCategory(id: 125, name: "Грузовик-сан"),
        MangaCategory(id: 28, name: "Гяру"),
        MangaCategory(id: 15, name: "Демоны"),
        MangaCategory(id: 67, name: "Дружба"),
        MangaCategory(id: 8, name: "Ёнкома"),
        MangaCategory(id: 69, name: "Жестокий мир"),
        MangaCategory(id: 70, name: "Животные компаньоны"),
        MangaCategory(id: 19, name: "Зверолюди"),
        MangaCategory(id: 14, name: "Зомби"),
        MangaCategory(id: 73, name: "Игровые элементы"),
        MangaCategory(id: 115, name: "Исекай"),
        MangaCategory(id: 76, name: "Космос"),
        MangaCategory(id: 36, name: "Криминал"),
        MangaCategory(id: 16, name: "Кулинария"),
        MangaCategory(id: 18, name: "Культивация"),
        MangaCategory(id: 108, name: "Лоли"),
        MangaCategory(id: 78, name: "Магическая академия"),
        MangaCategory(id: 22, name: "Магия"),
        MangaCategory(id: 17, name: "Медицина"),
        MangaCategory(id: 79, name: "Месть"),
        MangaCategory(id: 38, name: "Монстры"),
        MangaCategory(id: 39, name: "Музыка"),
        MangaCategory(id: 80, name: "Навыки"),
        MangaCategory(id: 81, name: "Наёмники"),
        MangaCategory(id: 82, name: "Насилие / жестокость"),
        MangaCategory(id: 83, name: "Нежить"),
        MangaCategory(id: 30, name: "Ниндзя"),
        MangaCategory(id: 40, name: "Обратный Гарем"),
        MangaCategory(id: 31, name: "Офисные работники"),
        MangaCategory(id: 85, name: "Пародия"),
        MangaCategory(id: 86, name: "Подземелья"),
        MangaCategory(id: 87, name: "Политика"),
        MangaCategory(id: 32, name: "Полиция"),
        MangaCategory(id: 43, name: "Путешествия во времени"),
        MangaCategory(id: 88, name: "Разумные расы"),
        MangaCategory(id: 68, name: "Ранги силы"),
        MangaCategory(id: 13, name: "Реинкарнация"),
        MangaCategory(id: 89, name: "Роботы"),
        MangaCategory(id: 90, name: "Рыцари"),
        MangaCategory(id: 33, name: "Самураи"),
        MangaCategory(id: 10, name: "Сборник"),
        MangaCategory(id: 11, name: "Сингл"),
        MangaCategory(id: 91, name: "Система"),
        MangaCategory(id: 93, name: "Скрытие личности"),
        MangaCategory(id: 94, name: "Спасение мира"),
        MangaCategory(id: 25, name: "Средневековье"),
        MangaCategory(id: 92, name: "Стимпанк"),
        MangaCategory(id: 95, name: "Супергерои"),
        MangaCategory(id: 34, name: "Традиционные игры"),
        MangaCategory(id: 109, name: "Тупой ГГ"),
        MangaCategory(id: 111, name: "Умный ГГ"),
        MangaCategory(id: 124, name: "Упоротость"),
        MangaCategory(id: 114, name: "Управление территорией"),
        MangaCategory(id: 126, name: "Учебное заведение"),
        MangaCategory(id: 96, name: "Учитель / ученик"),
        MangaCategory(id: 21, name: "Хикикомори"),
        MangaCategory(id: 99, name: "Шантаж"),
      ];
      return categories;
    } catch (e) {
      print('Ошибка при чтении файла: $e');
      return []; // Возвращаем пустой список в случае ошибки
    }
  }

  Future<List<MangaAgeLimit>> getMangaAgeLimits() async {
    try {
      final List<MangaAgeLimit> ageLimit = [
        MangaAgeLimit(id: 0, name: "Для всех"),
        MangaAgeLimit(id: 1, name: "16+"),
        MangaAgeLimit(id: 2, name: "18+"),
      ];
      return ageLimit;
    } catch (e) {
      print('Ошибка при чтении файла: $e');
      return []; // Возвращаем пустой список в случае ошибки
    }
  }

  Future<List<MangaStatus>> getMangaStatuses() async {
    try {
      final List<MangaStatus> status = [
        MangaStatus(id: 0, name: "Закончен"),
        MangaStatus(id: 1, name: "Продолжается"),
        MangaStatus(id: 2, name: "Заморожен"),
        MangaStatus(id: 3, name: "Нет переводчика"),
        MangaStatus(id: 4, name: "Анонс"),
        MangaStatus(id: 5, name: "Лицензировано"),
      ];
      return status;
    } catch (e) {
      log('Ошибка при чтении файла: $e');
      return []; // Возвращаем пустой список в случае ошибки
    }
  }

  Future<List<MangaType>> getMangaTypes() async {
    try {
      final List<MangaType> types = [
        MangaType(id: 0, name: "Манга"),
        MangaType(id: 1, name: "Манхва"),
        MangaType(id: 2, name: "Маньхуа"),
        MangaType(id: 3, name: "Западный комикс"),
        MangaType(id: 4, name: "Рукомикс"),
        MangaType(id: 5, name: "Индонезийский комикс"),
        MangaType(id: 6, name: "Другое"),
      ];

      return types;
    } catch (e) {
      // Обработка ошибок, например, если файл не найден или JSON не может быть разобран
      log('Ошибка при чтении файла: $e');
      return [];
    }
  }

  Future<List<MangaGenre>> getMangaGenres() async {
    try {
      final List<MangaGenre> genres = [
        MangaGenre(id: 3, name: "Боевые искусства"),
        MangaGenre(id: 5, name: "Гарем"),
        MangaGenre(id: 6, name: "Гендерная интрига"),
        MangaGenre(id: 7, name: "Героическое фэнтези"),
        MangaGenre(id: 8, name: "Детектив"),
        MangaGenre(id: 9, name: "Дзёсэй"),
        MangaGenre(id: 10, name: "Додзинси"),
        MangaGenre(id: 11, name: "Драма"),
        MangaGenre(id: 13, name: "История"),
        MangaGenre(id: 14, name: "Киберпанк"),
        MangaGenre(id: 15, name: "Кодомо"),
        MangaGenre(id: 50, name: "Комедия"),
        MangaGenre(id: 17, name: "Махо-сёдзё"),
        MangaGenre(id: 18, name: "Меха"),
        MangaGenre(id: 19, name: "Мистика"),
        MangaGenre(id: 51, name: "Мурим"),
        MangaGenre(id: 20, name: "Научная фантастика"),
        MangaGenre(id: 21, name: "Повседневность"),
        MangaGenre(id: 22, name: "Постапокалиптика"),
        MangaGenre(id: 23, name: "Приключения"),
        MangaGenre(id: 24, name: "Психология"),
        MangaGenre(id: 25, name: "Романтика"),
        MangaGenre(id: 27, name: "Сверхъестественное"),
        MangaGenre(id: 28, name: "Сёдзё"),
        MangaGenre(id: 29, name: "Сёдзё-ай"),
        MangaGenre(id: 30, name: "Сёнэн"),
        MangaGenre(id: 32, name: "Спорт"),
        MangaGenre(id: 33, name: "Сэйнэн"),
        MangaGenre(id: 34, name: "Трагедия"),
        MangaGenre(id: 35, name: "Триллер"),
        MangaGenre(id: 36, name: "Ужасы"),
        MangaGenre(id: 37, name: "Фантастика"),
        MangaGenre(id: 38, name: "Фэнтези"),
        MangaGenre(id: 39, name: "Школьная жизнь"),
        MangaGenre(id: 2, name: "Экшен"),
        MangaGenre(id: 16, name: "Элементы юмора"),
        MangaGenre(id: 40, name: "Этти"),
        MangaGenre(id: 41, name: "Юри"),
      ];

      return genres;
    } catch (e) {
      // Обработка ошибок, например, если файл не найден или JSON не может быть разобран
      log('Ошибка при чтении файла: $e');
      return [];
    }
  }

  Future<List<Title>> titles() async {
    const url = 'https://api.remanga.org/api/v2/titles/';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final dynamic responseData = jsonDecode(utf8.decode(response.bodyBytes));

      if (responseData['titles'] is List) {
        final List<dynamic> titlesData = responseData['titles'];
        return titlesData.map((json) => Title.fromJson(json)).toList();
      } else {
        // Если список заголовков не найден
        throw Exception('Список заголовков не найден');
      }
    } else {
      // Обработка ошибок HTTP-запроса
      throw Exception('Не удалось загрузить список заголовков');
    }
  }
}

class Car {
      int id;
      String name;
      String complete;
      String cost;
      List characteristics;
      String specification;
      String linkVideo;
      List linksImages;

      Car(this.id, this.name, this.complete, this.cost, this.characteristics, this.specification, this.linkVideo, this.linksImages);
}
List<Car> carsList =
[Car(0, 'Лада Веста', '1.8 CVT 2WD Techno 24', '2 015 900 рублей',
    ['1.8 л',
          '122 л.с.',
          '7,7 л',
          'Бензин АИ-92',
          'Вариатор',
          'Передний (FF)',
          '5 мест',
          '5 дверей',
          '178 мм',
          '480 л',], '22 февраля входящий в состав АвтоВАЗа завод «Лада Ижевск» приступил к серийному выпуску Lada Vesta модернизированного образца (обозначается как NG, то есть New Generation). Первым экземпляром, сошедшим с конвейера, стал универсал Vesta SW Cross в новом золотистом оттенке «Гарфилд». С модернизацией в экстерьере Весты изменены передняя и задняя бамперные группы. Единственная стальная штампованная панель, которая стала другой, — это крышка/дверца багажника. У фар изменилась конфигурация — внизу появилась более выраженная «ступенька». Вся внешняя светотехника стала полностью светодиодной, но лишь в богатых комплектациях, в «базе» по-прежнему используются галогеновые лампы.', "https://youtu.be/_Kme9huHbzw?si=gmdCcqm3Xio09Zjv",
    ["https://s.auto.drom.ru/i24276/c/photos/fullsize/lada/vesta/lada_vesta_1109671.jpg",
          "https://s.auto.drom.ru/i24276/c/photos/fullsize/lada/vesta/lada_vesta_1109663.jpg",
          "https://s.auto.drom.ru/i24276/c/photos/fullsize/lada/vesta/lada_vesta_1109665.jpg",
          "https://s.auto.drom.ru/i24276/c/photos/fullsize/lada/vesta/lada_vesta_1109666.jpg",]),
      Car(1, 'Лада Гранта', '1.6 MT Drive Active Comfort 23', '1 232 900 рублей',
          ['1.6 л',
                '106 л.с.',
                '6,5 л',
                'Бензин АИ-95',
                'МКПП',
                'Передний (FF)',
                '5 мест',
                '5 дверей',
                '162 мм',
                '435 л',], 'Производство обновленного семейства Lada Granta стартовало в Тольятти в августе 2018 года. С модернизацией Granta получила новый дизайн передка — с X-образной композицией в стиле Lada Vesta. Изменены капот, передние крылья, фары, решетка радиатора, передний бампер. Из функциональных новшеств экстерьера — перенесенные с капота на «жабо» форсунки омывателей лобового стекла. Двигатели и коробки передач не изменились. Доступны три варианта бензинового мотора 1,6 л и три варианта коробок передач. После рестайлинга Лада Гранта доступна в четырех типах кузова: седан, лифтбек, хэтчбек и универсал. Лифтбэк — пожалуй, самый интересный вариант Гранта, внешне сохраняющий сходство с седаном, имеющий почти ту же длину кузова (он короче всего на 18 мм), и очень практичный за счет наличия пятой двери, поднимающейся вместе с задним стеклом.', "https://youtu.be/Kj7_DiuNvnQ?si=WIAa8Wc_69qZyrTN",
          ["https://s.auto.drom.ru/i24225/c/photos/fullsize/lada/granta/lada_granta_840787.jpg",
                "https://s.auto.drom.ru/i24225/c/photos/fullsize/lada/granta/lada_granta_840782.jpg",
                "https://s.auto.drom.ru/i24225/c/photos/fullsize/lada/granta/lada_granta_840783.jpg",
                "https://s.auto.drom.ru/i24225/c/photos/fullsize/lada/granta/lada_granta_840784.jpg",]),
      Car(2, 'Лада Нива Тревел', '1.7 MT Luxe 24', '1 456 900 рублей',
          ['1.7 л',
                '80 л.с.',
                '10.2 л',
                'Бензин АИ-95',
                'МКПП',
                'Полный (4WD)',
                '5 мест',
                '5 дверей',
                '220 мм',
                '320 л',], 'Завод «Лада Запад Тольятти» (бывшее СП GM-AvtoVAZ) с 21 декабря приступил к производству глубоко модернизированной версии Lada Niva (бывший Chevrolet Niva). С рестайлингом машина получила новое имя — Lada Niva Travel. Экстерьер Нивы освежили за счет полностью нового оформления передней части кузова и других элементов сзади. По стилю обновленная Niva одновременно напоминает несостоявшийся проект Chevrolet Niva II и японскую Toyota RAV4 последнего поколения.',  "https://youtu.be/kuEOwvTmu74?si=jw500fkKXx0OS52A",
          ["https://s.auto.drom.ru/i24252/c/photos/fullsize/lada/niva_travel/lada_niva_travel_989387.jpg",
                "https://s.auto.drom.ru/i24254/c/photos/fullsize/lada/niva_travel/lada_niva_travel_997675.jpg",
                "https://s.auto.drom.ru/i24254/c/photos/fullsize/lada/niva_travel/lada_niva_travel_997676.jpg",
                "https://s.auto.drom.ru/i24254/c/photos/fullsize/lada/niva_travel/lada_niva_travel_997679.jpg",]),
      Car(3, 'Лада Нива Легенд', '1.7 MT Urban 24', '1 060 900 рублей',
          ['1.7 л',
                '83 л.с.',
                '9,9 л',
                'Бензин АИ-95',
                'МКПП',
                'Полный (4WD)',
                '5 мест',
                '4 двери',
                '200 мм',
                '265 л',], 'АвтоВАЗ объявил об обратном переименовании классического семейства внедорожников Lada 4x4 — с 11 января 2021 года оно снова зовется Lada Niva. Правда, теперь с приставкой Legend. Напомним, торговые имена Нива и Niva были зарегистрированы ВАЗом в 1976-м. Трехдверный внедорожник ВАЗ-2121 выпускался под именем Нива с момента появления в 1977 году, впоследствии это наименование распространилось на его модификации — удлиненные, пятидверный варианты, пикапы и грузовички. Однако в 2001-м АвтоВАЗ передал права на торговое имя вновь образованному совместному предприятию «GM-АвтоВАЗ», которое с 2002-го выпускало внедорожник Chevrolet Niva. По соглашению сторон с конца 2005 года все семейство классической Нивы переименовали в Lada 4x4. Именем Нива/Niva могло распоряжаться только СП, но в конце 2019-го АвтоВАЗ выкупил долю американцев в совместной фирме — и таким образом вернул себе легендарный исторический бренд.', "https://youtu.be/KbqMIcIRkDw?si=7Mw28VgUx5QJGApG",
          ["https://s.auto.drom.ru/i24264/c/photos/fullsize/lada/niva_legend/lada_niva_legend_1044302.jpg",
                "https://s.auto.drom.ru/i24253/c/photos/fullsize/lada/niva_legend/lada_niva_legend_991397.jpg",
                "https://s.auto.drom.ru/i24254/c/photos/fullsize/lada/niva_legend/lada_niva_legend_997682.jpg",
                "https://s.auto.drom.ru/i24254/c/photos/fullsize/lada/niva_legend/lada_niva_legend_997685.jpg",]),
      Car(4, 'Москвич 3', '1.5 CVT Стандарт плюс', '2 296 000 рублей',
          ['1.5 л',
                '136 л.с.',
                '6,6 л',
                'Бензин АИ-92',
                'Вариатор',
                '5 мест',
                '5 дверей',
                'Передний (FF)',
                '170 мм',
                '520 л',], 'Московский автомобильный завод «Москвич» (бывший завод Renault) в 2022 году начинает серийную крупноузловую сборку двух новых моделей — бензинового кроссовера «Москвич 3» и электрического «Москвич 3е». Обе машины являются переименованными версиями китайских JAC: это модели Sehol X4 и E40X соответственно. Обычный «Москвич 3» выпускается в модификациях с бензиновыми турбомоторами объемом 1,5 л (HFC4GB24D) мощностью 150 л.с. Внешне и внутри автомобиль практически не отличается от китайского оригинала, кроме эмблем. ', "https://youtu.be/8zR3wF8UE6Y?si=-W22x4VHxBK4afXM",
          ["https://s.auto.drom.ru/i24282/c/photos/fullsize/moskvitch/3/moskvitch_3_1140523.jpg",
                "https://s.auto.drom.ru/i24282/c/photos/fullsize/moskvitch/3/moskvitch_3_1140515.jpg",
                "https://s.auto.drom.ru/i24276/c/photos/fullsize/moskvitch/moskvitch_3/moskvitch_moskvitch_3_1109364.jpg",
                "https://s.auto.drom.ru/i24282/c/photos/fullsize/moskvitch/3/moskvitch_3_1140518.jpg",]),
      Car(5, 'УАЗ Патриот', '2.7 MT Base ИКАР Евро-5', '1 550 000 рублей',
          ['2,7 л',
                '150 л.с.',
                '12,5 л',
                'Бензин АИ-92',
                'МКПП',
                'Полный (4WD)',
                '5 мест',
                '5 дверей',
                '210 мм',
                '1130 л',], 'В октябре 2016 года компания УАЗ провела официальную премьеру внедорожника Патриот образца 2017 модельного года. Снаружи модернизированный внедорожник можно отличить по новой решетке радиатора с крупноячеистой сеткой, увеличенной эмблемой и двумя хромированными планками сверху и снизу. Патриот получил совершенно новый дизайн передней панели, изменилось рулевое колесо — оно теперь мультифункциональное и трехспицевое, с измененными подрулевыми переключателями, функцией трехкратного мигания поворотников и регулировкой по высоте и вылету. Главное конструктивное новшество — возможность установки в рулевое колесо и переднюю панель подушек безопасности для водителя и пассажира. По сравнению с предшествующей версией улучшились эргономика, шумоизоляция, Кроме того, машина получила единый топливный бак из пластика с заливной горловиной по правому борту автомобиля. За доплату впервые доступна блокировка заднего дифференциала. На момент старта продаж обновленный внедорожник можно приобрести только с бензиновым 2,7-литровым двигателем мощностью 134,6 л.с.', "https://youtu.be/GIpSekVc4Ok?si=bbz66L0H9JQ9xEHD",
          ["https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/patriot/uaz_patriot_656030.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/patriot/uaz_patriot_656031.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/patriot/uaz_patriot_656032.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/patriot/uaz_patriot_656033.jpg",]),
      Car(6, 'УАЗ Буханка', '2.7 MT Автобус 9 мест Евро 0', '1 435 000 рублей',
          ['2,7 л',
                '112 л.с.',
                '13,5 л',
                'Бензин',
                'МКПП',
                'Полный (4WD)',
                '9 мест',
                '5 дверей',
                '205 мм',
                '1200 л',], 'Семейство советских и российских полноприводных микроавтобусов, малотоннажных грузо-пассажирских автомобилей повышенной проходимости, прежде всего военного предназначения, производящихся на Ульяновском автомобильном заводе. Модель представляет собой модернизированный и рестайлинговый кузов УАЗ-450, производившийся с 1958 года. Вынужденно заняло собой место модели УАЗ-3165 в 1990—2000 гг., по причине непоявления последней. Серийный выпуск УАЗ-452 начат в 1965 году.', "https://youtu.be/JXsvvZb4eAM?si=F2u1mn6BdP1TtvzH",
          ["https://s.auto.drom.ru/i24243/c/photos/fullsize/uaz/buhanka/uaz_buhanka_947160.jpg",
                "https://s.auto.drom.ru/i24243/c/photos/fullsize/uaz/buhanka/uaz_buhanka_947029.jpg",
                "https://s.auto.drom.ru/i24243/c/photos/fullsize/uaz/buhanka/uaz_buhanka_947030.jpg",
                "https://s.auto.drom.ru/i24243/c/photos/fullsize/uaz/buhanka/uaz_buhanka_947031.jpg",]),
      Car(7, 'УАЗ Пикап', '2.7 MT Base ИКАР Limited Евро-5', '1 860 000 рублей',
          ['2,7 л',
                '150 л.с.',
                '12,8 л',
                'Бензин АИ-92',
                'МКПП',
                'Полный (4WD)',
                '5 мест',
                '4 двери',
                '210 мм',
                '1400 л',], 'В 2008 году вместе с очередной волной модернизации автомобиля УАЗ Патриот производитель предложил модель в новом кузове со сдвоенной 4-дверной 5-местной кабиной и небольшим открытым кузовом. Патриот Пикап — это серьезный автомобиль, способный работать в различных условиях и на дорогах с любым покрытием. Патриот Пикап имеет удлиненную до 3000 мм базу и обладает грузоподъемностью 725 кг. Размеры грузовой платформы 1400 х 1500 х 650 позволяют с легкостью перевозить габаритные предметы, без боязни запачкать или поцарапать салон. Мощные двигатели — бензиновый и дизельный — в сочетании с механической коробкой передач обеспечивают хорошую динамику. Рамная конструкция, крепкая подвеска, большой дорожный просвет, привод 4х4 создают ощущение надежности и полной свободы передвижения.', "https://youtu.be/sspkaaLtGIk?si=qX5ov-IR51sqHrdV",
          ["https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/pickup/uaz_pickup_656055.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/pickup/uaz_pickup_656056.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/pickup/uaz_pickup_656057.jpg",
                "https://s.auto.drom.ru/i24203/c/photos/fullsize/uaz/pickup/uaz_pickup_656058.jpg",]),
      Car(8, 'Москвич 6', '1.5 T-GDI DCT Техно', '3 116 000 рублей',
          ['1.5 л',
                '174 л.с.',
                '7,0 л',
                'Бензин АИ-95',
                'Робот',
                'Передний (FF)',
                '5 мест',
                '5 дверей',
                '140 мм',
                '540 л',], 'Автозавод «Москвич» с сентября 2023 года запускает в производство лифтбек «Москвич 6» — это переименованная версия китайского JAC Sehol A5 Plus. «Шестерка» стала третьей моделью возрожденного Москвича. Экстерьер автомобиля интересен динамичными линиями, с длинным капотом, небольшим наклоном ветрового стекла, плавно переходящего в округлую крышу. Небольшой задний свес подчеркивает двухобъемный характер кузова, но багажник машины имеет вполне приличные размеры — 540 литров. Для российских покупателей предложили три фиксированных комплектации в пяти вариантах окраски кузова. Первые две версии, «Комфорт» и «Бизнес», поступили в продажу еще осенью, а в декабре линейку пополнила топ-комплектация «Техно». На нашем рынке лифтбек доступен с бензиновыми моторами мощностью 136 или 174 л.с.', "https://youtu.be/hKmBM7HwQRo?si=6I4t0nkn2HtuTzrT",
          ["https://s.auto.drom.ru/i24286/c/photos/fullsize/moskvitch/6/moskvitch_6_1162084.jpg",
                "https://s.auto.drom.ru/i24280/c/photos/fullsize/moskvitch/6/moskvitch_6_1129686.jpg",
                "https://s.auto.drom.ru/i24280/c/photos/fullsize/moskvitch/6/moskvitch_6_1129685.jpg",
                "https://s.auto.drom.ru/i24286/c/photos/fullsize/moskvitch/6/moskvitch_6_1162086.jpg",]),
      Car(9, 'УАЗ Хантер', '2.7 MT Base Fleet Евро 0', '1 440 000 рублей',
          ['2,7 л',
                '112 л.с.',
                '13,2 л',
                'Бензин АИ-92',
                'МКПП',
                'Полный (4WD)',
                '5 мест',
                '5 дверей',
                '210 мм',
                '210 л',], 'Автомобиль УАЗ Хантер начал выпускаться с 19 ноября 2003 года. Он заменил собой серию УАЗ-3151, история которой велась еще с 1985 года (а если за точку отсчета принять УАЗ-469, то с 1972 года), так что к началу 2000-х годов автомобиль уже не удовлетворял никаким современным требованиям ни по динамике, ни по расходу топлива. Новая модификация, получившая индекс УАЗ-31519 и собственное название «Хантер», должна была вывести «УАЗик» на новый уровень и поднять продажи. Модернизация силового агрегата и шасси способствовала улучшению ходовых качеств. Были добавлены опции, позволившие повысить уровень комфорта, доработан кузов и салон. Автомобиль немного преобразился и внешне — к спартанской «выправке» добавился «городской» лоск, но при этом «Хантер» сохранил легендарную проходимость и интересен каждому, кому приходится пользоваться дорогами низкого качества, не говоря уже о необходимости передвигаться при полном отсутствии дорог.', "https://youtu.be/Qa2pitBRATA?si=7W9C9aS8ShysPUwo",
          ["https://s.auto.drom.ru/img4/catalog/photos/fullsize/uaz/hunter/uaz_hunter_108845.jpg",
                "https://s.auto.drom.ru/img4/catalog/photos/fullsize/uaz/hunter/uaz_hunter_70306.jpg",
                "https://s.auto.drom.ru/img4/catalog/photos/fullsize/uaz/hunter/uaz_hunter_70307.jpg",
                "https://s.auto.drom.ru/img4/catalog/photos/fullsize/uaz/hunter/uaz_hunter_70308.jpg",]),];
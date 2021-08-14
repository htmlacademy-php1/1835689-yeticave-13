<main class="container">
            <section class="promo">
                <h2 class="promo__title">Нужен стафф для катки?</h2>
                <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
                <ul class="promo__list">
                    <?php foreach ($categories as $category_item) : ?>
                        <li class="promo__item promo__item--boards">
                            <a class="promo__link" href="pages/all-lots.html"><?= htmlspecialchars($category_item); ?></a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </section>
            <section class="lots">
                <div class="lots__header">
                    <h2>Открытые лоты</h2>
                </div>
                <ul class="lots__list">

                    <?php foreach ($lots as $lot_key => $lot_val) : ?>
                        <li class="lots__item lot">
                            <div class="lot__image">
                                <img src="<?= htmlspecialchars($lot_val['image']); ?>" width="350" height="260" alt="<?= htmlspecialchars($lot_val['title']); ?>">
                            </div>
                            <div class="lot__info">
                                <span class="lot__category"><?= htmlspecialchars($categories[$lot_val['category_id']]); ?></span>
                                <h3 class="lot__title"><a class="text-link" href="pages/lot.html"><?= htmlspecialchars($lot_val['title']); ?></a></h3>
                                <div class="lot__state">
                                    <div class="lot__rate">
                                        <span class="lot__amount">Стартовая цена</span>
                                        <span class="lot__cost"><?= formate_cost($lot_val['cost']); ?></span>
                                    </div>
                                    <?php $res = get_dt_range($lot_val['date_exp']); ?>
                                    <div class="lot__timer timer <?php if ($res < 1): ?> timer--finishing <?php endif; ?>"><?= $res; ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </section>
        </main>
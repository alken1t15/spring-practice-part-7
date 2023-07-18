<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<style><%@include file="./css/index.css"%></style>
<style><%@include file="./css/header_responsive.css"%></style>
<style><%@include file="./css/footer_responsive.css"%></style>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500;700;900&family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <title>Контакты</title>  
    <link rel="stylesheet" href="./styles/index.css">
    <link rel="stylesheet" href="./styles/header_responsive.css">
    <link rel="stylesheet" href="./styles/footer_responsive.css">
</head>
<body>
<header>
    <div class="container header-container">
        <a href="/" class="logo__link"><img class="logo" src="./img/logo.svg" alt=""></a>
        <navbar class="navbar">
            <a href="exchange" class="navbar__link">Замены</a>
            <a href="shedule" class="navbar__link">Расписание</a>
            <a href="specialty" class="navbar__link">Специальности</a>
            <a href="resourses" class="navbar__link">Электронные ресурсы</a>
            <a href="educator" class="navbar__link">Преподаватели</a>
            <a href="contacts" class="navbar__link">Контакты</a>
            <security:authorize access="hasRole('TEACHER')"> <%--  access="hasRole('HR') указываеться роля кому будет видна--%>
                <a href="/profile" class="navbar__link navbar__link-profil navbar__link-profil-hidden"><img class="profile-photo-mini" src="./img/${people.name_img}" alt="Фото профиля"></a>
            </security:authorize>
            <security:authorize access="hasRole('STUDENT')"> <%--  access="hasRole('HR') указываеться роля кому будет видна--%>
                <a href="/profile" class="navbar__link navbar__link-profil navbar__link-profil-hidden"><img class="profile-photo-mini" src="./img/${people.name_img}" alt="Фото профиля"></a>
            </security:authorize>
            <security:authorize access="isAnonymous()"> <%--  access="hasRole('HR') указываеться роля кому будет видна--%>
                <a href="/profile" class="btn btn-sign">Вход</a>
            </security:authorize>
            <a href="#" class="btn btn-out">Выйти</a>
        </navbar>
        <button class="button-open">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </button></div>
</header>


    <section class="contacts">
        <div class="container contacts-container">
            <h5 class="contacts__title">Контакты</h5>
            <div class="contacts-inner">
                <div class="contacts-left">
                    <div class="contacts-item">
                        <img src="./img/contacts-1.svg" alt="Икнока адреса" class="contacts-item__img">
                        <p class="contacts-item__text">Республика Казахстан, г.Нур-Султан, район Сарыарка, ул.Бейбітшілік 39</p>
                    </div>
                    <div class="contacts-item">
                        <img src="./img/contacts-2.svg" alt="Икнока адреса" class="contacts-item__img">
                        <p class="contacts-item__text"><a href="tel:8 (7172) 50 14 81">8 (7172) 50 14 81</a>, <a href="tel:8 (7172) 68-07-20">8 (7172) 68-07-20</a>, <a href="tel:+7 705 760 9593">+7 705 760 9593</a> (Приемная комиссия)</p>
                    </div>
                    <div class="contacts-item">
                        <img src="./img/contacts-3.svg" alt="Икнока адреса" class="contacts-item__img">
                        <a class="contacts-item__text" href="mailto:polytech@polytech.kz">E-mail:<br>polytech@polytech.kz</a>
                    </div>
                </div>
                <div class="contacts-right">
                    <div id="map" style="width: 300px; height: 300px;"></div>
                </div>
            </div>
           
        </div>
    </section>

    <footer class="footer">
        <div class="container footer-container">
            <div class="footer-logo"><a href="index.jsp" class="logo__link"><img class="logo big-logo" src="./img/logo.svg" alt=""></a></div>
            <div class="footer-main-col">
                <p class="footer__title">Полезные ссылки</p>
                <a href="/exchange" class="footer__link">Замены</a>
                <a href="/specialty" class="footer__link">Специальности</a>
                <a href="/resourses" class="footer__link">Электронные ресурсы</a>
                <a href="/contacts" class="footer__link">Контакты</a>
            </div>
            <div class="footer-main-col">
                <p class="footer__title">Полезные ссылки</p>
                <a href="/profile" class="footer__link">Войти в профиль</a>
                <a href="/educator" class="footer__link">Преподаватели</a>
                <a href="/kdm.html" class="footer__link">Комитет по делам молодежи</a>
                <a href="/shedule" class="footer__link">Расписание</a>
            </div>
            <div class="footer-main-col footer-social-col">
                <p class="footer__title">Мы в социальных сетях:</p>
                <div class="social-container">
                    <a href="https://www.instagram.com/apc_stories/" class="footer__link"><img src="./img/Instagram.svg" alt="логотип Instagram" class="footer__img"></a>
                    <a href="https://t.me/polytech_astana" class="footer__link"><img src="./img/tg.svg" alt="логотип telegram" class="footer__img"></a>
                    <a href="https://vk.com/polytech_astana" class="footer__link"><img src="./img/vk.svg" alt="логотип Vk" class="footer__img"></a>
                    <a href="https://www.facebook.com/polytech.astana/" class="footer__link"><img src="./img/fb.svg" alt="логотип FaceBook" class="footer__img"></a> 
                </div>
            </div>
        </div>
    </footer>

    <!-- <section class="modal sing-in" id="sing-in">
        <div class="sign-in-container">
            <a href="#header" class="sign-in__close"><img src="./img/icons8-close.svg" alt="Close icon" class="close-icon"></a>
            <p class="sign-in__title">Вход</p>
            <form action="#" method="post" class="sing-in__form">
                <div class="field-box">
                    <div class="field-left">
                        <p class="field-left__text">Логин</p>
                    </div>
                    <div class="field-right">
                        <input type="text" name="login" class="input-field" placeholder="Ваш логин" required minlength="5">
                    </div>
                </div>
                <div class="field-box">
                    <div class="field-left">
                        <p class="field-left__text">Пароль</p>
                    </div>
                    <div class="field-right">
                        <input type="password" name="password" class="input-field" placeholder="Ваш пароль" required minlength="6">
                    </div>
                </div>
                <p class="red red">Не правильно введен логин или пароль</p>
                <button type="submit" class="btn btn-sn">Войти</button>
            </form>
        </div>
    </section> -->

    <script src="https://api-maps.yandex.ru/2.1/?apikey=9b601e88-cb69-42b4-9221-08e3f5d37380&lang=ru_RU" type="text/javascript">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="../../js/index.js"></script>
    <script type="text/javascript" src="../../js/menu.js"></script>
</body>
</html>
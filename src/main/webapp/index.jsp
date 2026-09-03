<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>NexusShop · friendly store</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400..700&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        /* ----- reset & base (softer, friendlier) ----- */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        :root {
            --bg: #f4f2ed;
            --surface: #ffffff;
            --card: #ffffff;
            --primary: #1f2a3e;
            --soft-accent: #b8a6a0;
            --accent: #b47b6e;
            --accent-light: #ebdbd6;
            --accent-dark: #946157;
            --muted: #6b6a7a;
            --muted-light: #b0aebd;
            --success: #4c8b7c;
            --shadow: 0 8px 28px rgba(0, 0, 0, 0.03), 0 2px 8px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 18px 40px rgba(31, 42, 62, 0.07);
            --radius: 20px;
            --radius-sm: 12px;
            --transition: 0.2s ease;
            --container: 1240px;
        }

        body {
            font-family: 'Inter', -apple-system, system-ui, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        button {
            cursor: pointer;
            font-family: inherit;
            border: none;
            background: none;
            color: inherit;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 15px;
            transition: var(--transition);
            border: 2px solid transparent;
            background: var(--primary);
            color: white;
        }

        .btn-primary {
            background: var(--accent);
            border-color: var(--accent);
            color: #fff;
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(180, 123, 110, 0.25);
        }

        .btn-outline {
            background: transparent;
            border-color: rgba(31, 42, 62, 0.15);
            color: var(--primary);
        }

        .btn-outline:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .btn-ghost-light {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(4px);
            border-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        .btn-ghost-light:hover {
            background: rgba(255, 255, 255, 0.22);
            transform: translateY(-2px);
        }

        .btn-sm {
            padding: 8px 18px;
            font-size: 13px;
        }

        /* ----- header (friendly, airy) ----- */
        header {
            position: sticky;
            top: 0;
            z-index: 90;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(31, 42, 62, 0.04);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            padding: 12px 0;
            min-height: 68px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            font-size: 22px;
            letter-spacing: -0.4px;
            color: var(--primary);
        }

        .brand .accent {
            color: var(--accent);
        }

        .brand i {
            font-size: 24px;
            color: var(--accent);
        }

        nav.main-nav ul {
            display: flex;
            gap: 2px;
            list-style: none;
        }

        nav.main-nav li a {
            display: flex;
            align-items: center;
            gap: 6px;
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            font-size: 14px;
            color: var(--muted);
            transition: var(--transition);
        }

        nav.main-nav li a:hover,
        nav.main-nav li a.active {
            background: var(--accent-light);
            color: var(--primary);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;
            border-radius: 60px;
            display: grid;
            place-items: center;
            font-size: 18px;
            color: var(--muted);
            transition: var(--transition);
            position: relative;
        }

        .icon-btn:hover {
            background: var(--accent-light);
            color: var(--primary);
        }

        .cart-wrap {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            font-weight: 700;
            width: 20px;
            height: 20px;
            border-radius: 40px;
            display: grid;
            place-items: center;
            border: 2px solid #fff;
        }

        .search-wrap {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 60px;
            padding: 0 18px;
            border: 2px solid transparent;
            transition: var(--transition);
            box-shadow: var(--shadow);
            min-width: 180px;
        }

        .search-wrap:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 5px rgba(180, 123, 110, 0.08);
        }

        .search-wrap input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            color: var(--primary);
        }

        .search-wrap input::placeholder {
            color: var(--muted-light);
        }

        .search-wrap button {
            padding: 8px 0 8px 10px;
            color: var(--muted);
            font-size: 15px;
        }

        .search-wrap button:hover {
            color: var(--accent);
        }

        .mobile-toggle {
            display: none;
            width: 42px;
            height: 42px;
            border-radius: 60px;
            background: var(--accent-light);
            font-size: 18px;
            color: var(--primary);
        }

        #mobileMenu {
            display: none;
            background: #fff;
            border-top: 1px solid rgba(0, 0, 0, 0.02);
            padding: 12px 0 20px;
        }

        #mobileMenu ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        #mobileMenu ul li a {
            display: flex;
            align-items: center;
            gap: 14px;
            padding: 12px 16px;
            border-radius: var(--radius-sm);
            font-weight: 500;
            color: var(--primary);
        }

        #mobileMenu ul li a:hover {
            background: var(--accent-light);
        }

        /* ----- hero (friendly, bright) ----- */
        .hero {
            position: relative;
            padding: 52px 0;
            margin: 16px 24px 0;
            border-radius: var(--radius);
            background: linear-gradient(140deg, #1f2a3e 0%, #2f3c54 100%);
            overflow: hidden;
        }

        .hero::after {
            content: '';
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            opacity: 0.25;
            z-index: 0;
        }

        .hero .container {
            position: relative;
            z-index: 1;
        }

        .hero .badge {
            display: inline-block;
            background: rgba(212, 140, 124, 0.2);
            color: #f2ddd7;
            padding: 4px 18px;
            border-radius: 60px;
            font-weight: 600;
            font-size: 13px;
            margin-bottom: 14px;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            font-size: 44px;
            color: #fff;
            line-height: 1.1;
            max-width: 600px;
            margin-bottom: 12px;
        }

        .hero p {
            color: rgba(255, 255, 255, 0.8);
            font-size: 17px;
            max-width: 460px;
            margin-bottom: 24px;
            line-height: 1.6;
        }

        .hero .actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* ----- sections (airy) ----- */
        .section {
            padding: 48px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            flex-wrap: wrap;
            gap: 12px;
            margin-bottom: 28px;
        }

        .section-header h2 {
            font-size: 28px;
            font-weight: 700;
            letter-spacing: -0.3px;
        }

        .section-header .sub {
            color: var(--muted);
            font-size: 15px;
            margin-top: 2px;
        }

        .view-all {
            font-weight: 600;
            color: var(--accent);
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 14px;
            white-space: nowrap;
            transition: var(--transition);
        }

        .view-all:hover {
            gap: 12px;
            color: var(--accent-dark);
        }

        /* categories (friendly cards) */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .cat-card {
            background: var(--card);
            border-radius: var(--radius);
            padding: 22px 12px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 2px solid transparent;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent-light);
            box-shadow: var(--shadow-hover);
        }

        .cat-card .icon-wrap {
            width: 56px;
            height: 56px;
            border-radius: 60px;
            background: var(--accent-light);
            display: grid;
            place-items: center;
            margin: 0 auto 12px;
            font-size: 24px;
            color: var(--accent);
            transition: var(--transition);
        }

        .cat-card:hover .icon-wrap {
            background: var(--accent);
            color: #fff;
        }

        .cat-card h4 {
            font-size: 15px;
            font-weight: 600;
        }

        .cat-card .count {
            font-size: 13px;
            color: var(--muted);
            margin-top: 4px;
        }

        /* products (friendlier) */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            border: 2px solid transparent;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-6px);
            border-color: var(--accent-light);
            box-shadow: var(--shadow-hover);
        }

        .product-card .img-wrap {
            position: relative;
            background: #f0edea;
            aspect-ratio: 1/1;
            overflow: hidden;
        }

        .product-card .img-wrap img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .img-wrap img {
            transform: scale(1.03);
        }

        .product-card .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: #fff;
            padding: 4px 14px;
            border-radius: 60px;
            font-size: 11px;
            font-weight: 700;
        }

        .product-card .badge.sale {
            background: var(--success);
        }

        .product-card .wish-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 36px;
            height: 36px;
            border-radius: 60px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(4px);
            display: grid;
            place-items: center;
            font-size: 16px;
            color: var(--muted);
            transition: var(--transition);
        }

        .product-card .wish-btn:hover {
            background: #fff;
            color: var(--accent);
            transform: scale(1.08);
        }

        .product-card .body {
            padding: 14px 16px 6px;
            flex: 1;
        }

        .product-card .body .category-tag {
            font-size: 12px;
            text-transform: uppercase;
            color: var(--muted-light);
            font-weight: 600;
            letter-spacing: 0.4px;
        }

        .product-card .body h5 {
            font-size: 15px;
            font-weight: 600;
            margin: 4px 0 2px;
            line-height: 1.3;
        }

        .product-card .body .price-row {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 4px;
        }

        .product-card .body .price {
            font-weight: 700;
            font-size: 18px;
        }

        .product-card .body .old-price {
            color: var(--muted-light);
            text-decoration: line-through;
            font-size: 14px;
        }

        .product-card .body .rating {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 13px;
            color: #e3a53b;
            margin-top: 4px;
        }

        .product-card .body .rating span {
            color: var(--muted);
            font-weight: 400;
        }

        .product-card .footer {
            padding: 4px 16px 16px;
            display: flex;
            gap: 10px;
        }

        .product-card .footer .add-btn {
            flex: 1;
            padding: 10px;
            border-radius: var(--radius-sm);
            background: var(--primary);
            color: #fff;
            font-weight: 600;
            font-size: 14px;
            transition: var(--transition);
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .product-card .footer .add-btn:hover {
            background: var(--accent);
            transform: scale(1.02);
        }

        .product-card .footer .add-btn.added {
            background: var(--success);
        }

        /* deal */
        .deal-wrap {
            display: flex;
            background: var(--card);
            border-radius: var(--radius);
            overflow: hidden;
            box-shadow: var(--shadow);
        }

        .deal-wrap .deal-img {
            flex: 0 0 46%;
            background: #eae7e2;
            min-height: 260px;
        }

        .deal-wrap .deal-img img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-wrap .deal-content {
            flex: 1;
            padding: 36px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-wrap .tag {
            background: var(--success);
            color: #fff;
            padding: 4px 16px;
            border-radius: 60px;
            font-size: 12px;
            font-weight: 700;
            align-self: flex-start;
            margin-bottom: 12px;
            text-transform: uppercase;
        }

        .deal-wrap h3 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .deal-wrap .desc {
            color: var(--muted);
            margin-bottom: 12px;
        }

        .deal-wrap .price-big {
            font-size: 32px;
            font-weight: 800;
        }

        .deal-wrap .price-big .old {
            font-size: 20px;
            font-weight: 400;
            color: var(--muted-light);
            text-decoration: line-through;
            margin-left: 10px;
        }

        .deal-wrap .stock {
            font-size: 14px;
            color: var(--muted);
            margin: 6px 0 14px;
        }

        .deal-wrap .stock strong {
            color: var(--accent);
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 12px 0 18px;
        }

        .timer-box {
            background: var(--primary);
            color: #fff;
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            min-width: 64px;
            text-align: center;
        }

        .timer-box .num {
            font-size: 24px;
            font-weight: 700;
            line-height: 1.2;
        }

        .timer-box .label {
            font-size: 10px;
            opacity: 0.7;
            text-transform: uppercase;
        }

        /* testimonials */
        .testimonials-scroll {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 6px 2px 16px;
            scroll-snap-type: x mandatory;
        }

        .testimonials-scroll::-webkit-scrollbar {
            height: 4px;
        }

        .testimonials-scroll::-webkit-scrollbar-thumb {
            background: var(--accent-light);
            border-radius: 60px;
        }

        .testimonial-card {
            flex: 0 0 320px;
            background: var(--card);
            border-radius: var(--radius);
            padding: 24px;
            box-shadow: var(--shadow);
            scroll-snap-align: start;
        }

        .testimonial-card .stars {
            color: #e3a53b;
            font-size: 16px;
            letter-spacing: 2px;
            margin-bottom: 8px;
        }

        .testimonial-card blockquote {
            font-size: 15px;
            line-height: 1.6;
            font-style: italic;
            margin-bottom: 14px;
            color: var(--primary);
        }

        .testimonial-card .author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .testimonial-card .author .avatar {
            width: 44px;
            height: 44px;
            border-radius: 60px;
            object-fit: cover;
            background: var(--bg);
        }

        .testimonial-card .author .name {
            font-weight: 600;
            font-size: 14px;
        }

        .testimonial-card .author .role {
            font-size: 13px;
            color: var(--muted);
        }

        /* newsletter */
        .newsletter-wrap {
            background: linear-gradient(145deg, #1f2a3e, #2d3a52);
            border-radius: var(--radius);
            padding: 44px 48px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 28px;
        }

        .newsletter-wrap .text h3 {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 2px;
        }

        .newsletter-wrap .text p {
            opacity: 0.75;
            font-size: 15px;
        }

        .newsletter-wrap form {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            flex: 1;
            max-width: 480px;
        }

        .newsletter-wrap form input {
            flex: 1;
            min-width: 180px;
            padding: 14px 22px;
            border-radius: 60px;
            border: 0;
            font-size: 15px;
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            outline: 2px solid transparent;
            transition: var(--transition);
        }

        .newsletter-wrap form input::placeholder {
            color: rgba(255, 255, 255, 0.5);
        }

        .newsletter-wrap form input:focus {
            outline-color: var(--accent);
            background: rgba(255, 255, 255, 0.18);
        }

        .newsletter-wrap form .btn {
            background: var(--accent);
            border-color: var(--accent);
            color: #fff;
            padding: 14px 32px;
        }

        .newsletter-wrap form .btn:hover {
            background: var(--accent-dark);
            border-color: var(--accent-dark);
        }

        #newsletterMsg {
            margin-top: 10px;
            font-size: 14px;
            opacity: 0.9;
            width: 100%;
        }

        /* footer */
        footer {
            margin-top: 12px;
            padding: 40px 0 24px;
            border-top: 1px solid rgba(31, 42, 62, 0.04);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 36px;
            margin-bottom: 28px;
        }

        .footer-grid .brand-col p {
            color: var(--muted);
            font-size: 14px;
            max-width: 280px;
            margin-top: 4px;
            line-height: 1.6;
        }

        .footer-grid .socials {
            display: flex;
            gap: 10px;
            margin-top: 14px;
        }

        .footer-grid .socials a {
            width: 40px;
            height: 40px;
            border-radius: 60px;
            background: var(--bg);
            display: grid;
            place-items: center;
            color: var(--muted);
            transition: var(--transition);
        }

        .footer-grid .socials a:hover {
            background: var(--accent);
            color: #fff;
        }

        .footer-grid .col h5 {
            font-weight: 700;
            font-size: 14px;
            margin-bottom: 12px;
        }

        .footer-grid .col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .footer-grid .col ul li a {
            color: var(--muted);
            font-size: 14px;
            transition: var(--transition);
        }

        .footer-grid .col ul li a:hover {
            color: var(--accent);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 18px;
            border-top: 1px solid rgba(31, 42, 62, 0.04);
            color: var(--muted-light);
            font-size: 13px;
        }

        /* responsive */
        @media (max-width: 1200px) {
            .products-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .categories-grid {
                grid-template-columns: repeat(3, 1fr);
            }
            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 992px) {
            .hero h1 {
                font-size: 34px;
            }
            .hero {
                margin: 12px 12px 0;
                padding: 36px 0;
            }
            .deal-wrap {
                flex-direction: column;
            }
            .deal-wrap .deal-img {
                flex: 0 0 220px;
            }
            .deal-wrap .deal-content {
                padding: 28px 24px;
            }
            .newsletter-wrap {
                padding: 28px 24px;
                flex-direction: column;
                text-align: center;
            }
            .search-wrap {
                min-width: 140px;
            }
        }

        @media (max-width: 768px) {
            nav.main-nav {
                display: none;
            }
            .mobile-toggle {
                display: grid;
                place-items: center;
            }
            .products-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }
            .hero h1 {
                font-size: 28px;
            }
            .section-header h2 {
                font-size: 22px;
            }
            .deal-wrap .deal-content h3 {
                font-size: 22px;
            }
            .timer-box {
                min-width: 54px;
                padding: 6px 10px;
            }
            .timer-box .num {
                font-size: 20px;
            }
            .footer-grid {
                grid-template-columns: 1fr;
                gap: 20px;
            }
            .brand {
                font-size: 19px;
            }
            .search-wrap {
                min-width: 110px;
                padding: 0 12px;
            }
            .search-wrap input {
                font-size: 13px;
                padding: 8px 0;
            }
            .header-actions .icon-btn {
                width: 36px;
                height: 36px;
                font-size: 16px;
            }
            .testimonial-card {
                flex: 0 0 270px;
            }
        }

        @media (max-width: 480px) {
            .products-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }
            .hero {
                margin: 8px 8px 0;
                padding: 24px 0;
                border-radius: var(--radius-sm);
            }
            .hero h1 {
                font-size: 24px;
            }
            .container {
                padding: 0 14px;
            }
            .deal-wrap .deal-content {
                padding: 18px 16px;
            }
            .newsletter-wrap {
                padding: 20px 16px;
            }
            .product-card .body h5 {
                font-size: 13px;
            }
            .product-card .body .price {
                font-size: 16px;
            }
            .product-card .footer .add-btn {
                font-size: 12px;
                padding: 8px;
            }
            .cat-card {
                padding: 14px 8px;
            }
            .cat-card .icon-wrap {
                width: 44px;
                height: 44px;
                font-size: 18px;
            }
            .cat-card h4 {
                font-size: 13px;
            }
        }
    </style>
</head>

<body>

    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:10px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:10px;">
                <div class="search-wrap">
                    <input type="search" id="searchInput" placeholder="Search ..." />
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn"><i class="far fa-user"></i></button>
                    <button class="icon-btn"><i class="far fa-heart"></i></button>
                    <div class="cart-wrap">
                        <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
                        <span class="cart-count" id="cartCount">0</span>
                    </div>
                </div>
            </div>
        </div>

        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
                    <li><a href="#"><i class="far fa-user"></i> Account</a></li>
                    <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero">
            <div class="container">
                <div class="badge"><i class="fas fa-sparkles"></i> Fresh 2026</div>
                <h1>Premium finds,<br>friendly prices</h1>
                <p>Curated fashion, tech & accessories. Free shipping on your first order.</p>
                <div class="actions">
                    <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
                    <button class="btn btn-ghost-light" id="exploreDeals"><i class="fas fa-clock"></i> Deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="section" id="categories">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2>Browse categories</h2>
                        <div class="sub">Find what you love</div>
                    </div>
                    <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- Products -->
        <section class="section" id="products">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2>🔥 Trending now</h2>
                        <div class="sub">Popular picks from our community</div>
                    </div>
                    <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- Deal -->
        <section class="section" id="deals">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2>⚡ Flash deal</h2>
                        <div class="sub">Limited stock – grab it</div>
                    </div>
                </div>
                <div class="deal-wrap">
                    <div class="deal-img">
                        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
                        <h3>MacBook Air M2</h3>
                        <p class="desc">Thin, light, powerful – the M2 chip redefines performance.</p>
                        <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
                        <p class="stock">Only <strong>12</strong> left — hurry!</p>
                        <div class="timer-grid" id="dealTimer">
                            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
                            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
                            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
                            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-header">
                    <div>
                        <h2>💬 Real reviews</h2>
                        <div class="sub">From our happy customers</div>
                    </div>
                </div>
                <div class="testimonials-scroll" id="testimonialsList"></div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section">
            <div class="container">
                <div class="newsletter-wrap">
                    <div class="text">
                        <h3>Stay in the loop</h3>
                        <p>Exclusive offers, early access & new arrivals</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <input type="email" id="newsletterEmail" placeholder="your@email.com" required />
                        <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="brand-col">
                    <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
                    <p>Modern e‑commerce with a friendly touch. Quality products, seamless experience.</p>
                    <div class="socials">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
                <div class="col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
                <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
            </div>
            <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
        </div>
    </footer>

    <script>
        // ------------------------------------------------------------
        // DATA
        // ------------------------------------------------------------
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];

        const TESTIMONIALS = [
            { name: 'Ava Martin', role: 'Verified Buyer',
                avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
                text: 'Fast shipping and excellent support. The product exceeded expectations!', stars: 5 },
            { name: 'Michael Lee', role: 'Frequent Shopper',
                avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
                text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
            { name: 'Sophia Chen', role: 'Designer',
                avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
                text: 'Love the quality and the packaging. Everything arrived perfect.', stars: 5 },
            { name: 'James Wilson', role: 'Tech Enthusiast',
                avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
                text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
        ];

        // ------------------------------------------------------------
        // STATE
        // ------------------------------------------------------------
        let cartCount = 0;

        // ------------------------------------------------------------
        // DOM refs
        // ------------------------------------------------------------
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');
        const searchBtn = document.getElementById('searchBtn');
        const mobileToggle = document.getElementById('mobileToggle');
        const mobileMenu = document.getElementById('mobileMenu');
        const newsletterForm = document.getElementById('newsletterForm');
        const newsletterEmail = document.getElementById('newsletterEmail');
        const newsletterMsg = document.getElementById('newsletterMsg');
        const testimonialsList = document.getElementById('testimonialsList');

        // ------------------------------------------------------------
        // HELPERS
        // ------------------------------------------------------------
        function escapeHtml(text) {
            return String(text).replace(/[&<>"']/g, s => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;',
                "'": '&#39;' } [s]));
        }

        function updateCartCount() {
            cartCountEl.textContent = cartCount;
            cartCountEl.style.transform = 'scale(1.3)';
            setTimeout(() => cartCountEl.style.transform = 'scale(1)', 200);
        }

        function addToCart(productId, btnEl) {
            const p = PRODUCTS.find(x => x.id === productId);
            if (!p) return;
            cartCount++;
            updateCartCount();
            if (btnEl) {
                const orig = btnEl.innerHTML;
                btnEl.innerHTML = '<i class="fas fa-check"></i> Added';
                btnEl.classList.add('added');
                setTimeout(() => { btnEl.innerHTML = orig;
                    btnEl.classList.remove('added'); }, 1400);
            }
            document.getElementById('cartBtn').style.color = 'var(--accent)';
            setTimeout(() => document.getElementById('cartBtn').style.color = '', 400);
        }

        function filterProducts(query) {
            const q = String(query || '').trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p =>
                p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)
            );
            renderProducts(filtered);
        }

        // ------------------------------------------------------------
        // RENDER
        // ------------------------------------------------------------
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `
                    <div class="icon-wrap"><i class="fas ${cat.icon}"></i></div>
                    <h4>${cat.name}</h4>
                    <div class="count">${cat.count} items</div>
                `;
                el.addEventListener('click', () => {
                    searchInput.value = cat.name;
                    filterProducts(cat.name);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
                });
                categoriesGrid.appendChild(el);
            });
        }

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            if (!list.length) {
                productsGrid.innerHTML =
                    `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No products found.</p>`;
                return;
            }
            list.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                const badgeClass = p.badge === 'Sale' ? 'sale' : '';
                const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : '';
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` :
                    '';
                const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
                el.innerHTML = `
                    <div class="img-wrap">
                        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                        ${badgeHtml}
                        <button class="wish-btn"><i class="far fa-heart"></i></button>
                    </div>
                    <div class="body">
                        <div class="category-tag">${p.category}</div>
                        <h5>${escapeHtml(p.title)}</h5>
                        <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${oldPriceHtml}</div>
                        <div class="rating">${stars} <span>(${p.reviews})</span></div>
                    </div>
                    <div class="footer">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                    </div>
                `;
                productsGrid.appendChild(el);
            });
            productsGrid.querySelectorAll('.add-btn').forEach(btn => {
                btn.addEventListener('click', function(e) {
                    e.stopPropagation();
                    addToCart(Number(this.dataset.id), this);
                });
            });
        }

        function renderTestimonials() {
            testimonialsList.innerHTML = '';
            TESTIMONIALS.forEach(t => {
                const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
                const el = document.createElement('div');
                el.className = 'testimonial-card';
                el.innerHTML = `
                    <div class="stars">${stars}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="author">
                        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div><div class="name">${escapeHtml(t.name)}</div><div class="role">${escapeHtml(t.role)}</div></div>
                    </div>
                `;
                testimonialsList.appendChild(el);
            });
        }

        // ------------------------------------------------------------
        // DEAL TIMER
        // ------------------------------------------------------------
        (function setupDealTimer() {
            const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
            function tick() {
                const diff = target - new Date();
                if (diff <= 0) {
                    document.getElementById('dealDays').textContent = '0';
                    document.getElementById('dealHours').textContent = '00';
                    document.getElementById('dealMinutes').textContent = '00';
                    document.getElementById('dealSeconds').textContent = '00';
                    return;
                }
                document.getElementById('dealDays').textContent = Math.floor(diff / (24 * 3600 * 1000));
                document.getElementById('dealHours').textContent = String(Math.floor((diff % (24 * 3600 * 1000)) / (
                    3600 * 1000))).padStart(2, '0');
                document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600 * 1000)) / (60 *
                    1000))).padStart(2, '0');
                document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60 * 1000)) / 1000))
                    .padStart(2, '0');
            }
            tick();
            setInterval(tick, 1000);
        })();

        // ------------------------------------------------------------
        // EVENTS
        // ------------------------------------------------------------
        searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

        mobileToggle.addEventListener('click', () => {
            const open = mobileMenu.style.display === 'block';
            mobileMenu.style.display = open ? 'none' : 'block';
            mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
        });
        mobileMenu.querySelectorAll('a').forEach(a => a.addEventListener('click', () => {
            mobileMenu.style.display = 'none';
            mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
        }));

        document.getElementById('shopNow').addEventListener('click', () =>
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDeals').addEventListener('click', () =>
            document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));

        document.getElementById('buyDeal').addEventListener('click', function() {
            cartCount++;
            updateCartCount();
            const orig = this.innerHTML;
            this.innerHTML = '<i class="fas fa-check"></i> Added!';
            this.style.background = 'var(--success)';
            setTimeout(() => { this.innerHTML = orig;
                this.style.background = ''; }, 1500);
        });

        document.getElementById('cartBtn').addEventListener('click', () =>
            alert(`🛒 Your cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`));

        newsletterForm.addEventListener('submit', (e) => {
            e.preventDefault();
            const email = newsletterEmail.value.trim();
            if (!email || !email.includes('@')) {
                newsletterMsg.textContent = 'Please enter a valid email.';
                newsletterMsg.style.color = '#ffb3b3';
                newsletterMsg.style.display = 'block';
                return;
            }
            newsletterMsg.textContent = '🎉 Thanks for subscribing!';
            newsletterMsg.style.color = '#a8e6cf';
            newsletterMsg.style.display = 'block';
            newsletterEmail.value = '';
            setTimeout(() => { newsletterMsg.style.display = 'none'; }, 3500);
        });

        document.getElementById('year').textContent = new Date().getFullYear();

        // ------------------------------------------------------------
        // INIT
        // ------------------------------------------------------------
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize', () => {
            if (window.innerWidth > 768) {
                mobileMenu.style.display = 'none';
                mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
            }
        });

        console.log('✨ NexusShop — friendly e‑commerce loaded.');
    </script>
</body>
</html>

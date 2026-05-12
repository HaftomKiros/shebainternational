
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Dynamic SEO Meta Tags -->
    <?php
    $current_uri = uri_string();
    $page_title = 'Sheba International, Inc.';
    $page_description = 'Sheba International, Inc., established in 1996 in Huntington, West Virginia, U.S.A., is a global consulting firm providing expert services in healthcare, business, research, grant writing and evaluation, EHR consulting and training, workforce development, IT and web solutions. Trusted by industries worldwide to deliver innovative solutions.';
    $page_keywords = 'Sheba International, business consulting, healthcare consulting, research services, grant writing, grant evaluation, EHR consulting, workforce development, IT solutions, web solutions, professional consultancy, global consulting firm, training services, business strategy, technology solutions, expert consulting';

    // Dynamic titles and descriptions based on page
    if (strpos($current_uri, 'services') !== false) {
        $page_title = 'Professional Consulting Services | Sheba International, Inc.';
        $page_description = 'Expert consulting services in healthcare, business, research, grant writing, EHR implementation, workforce development, and IT solutions. Global consulting firm with 25+ years of experience.';
    } elseif (strpos($current_uri, 'about') !== false) {
        $page_title = 'About Us - Global Consulting Firm | Sheba International, Inc.';
        $page_description = 'Learn about Sheba International, Inc., a trusted global consulting firm established in 1996, providing innovative solutions in healthcare, business, and technology sectors worldwide.';
    } elseif (strpos($current_uri, 'research') !== false) {
        $page_title = 'Research & Grant Writing Services | Sheba International, Inc.';
        $page_description = 'Professional research services and grant writing expertise. We help organizations secure funding through comprehensive research, evaluation, and grant application support.';
    } elseif (strpos($current_uri, 'contact') !== false) {
        $page_title = 'Contact Us | Sheba International, Inc.';
        $page_description = 'Get in touch with Sheba International, Inc. for expert consulting services. Located in Huntington, West Virginia, serving clients worldwide.';
    }
    ?>

    <title><?php echo htmlspecialchars($page_title, ENT_QUOTES, 'UTF-8'); ?></title>
    <meta name="description" content="<?php echo htmlspecialchars($page_description, ENT_QUOTES, 'UTF-8'); ?>">
    <meta name="keywords" content="<?php echo htmlspecialchars($page_keywords, ENT_QUOTES, 'UTF-8'); ?>">

    <!-- Additional SEO Meta Tags -->
    <meta name="author" content="Sheba International, Inc.">
    <meta name="robots" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1">
    <meta name="googlebot" content="index, follow">
    <meta name="bingbot" content="index, follow">

    <!-- Open Graph Meta Tags for Social Media -->
    <meta property="og:type" content="website">
    <meta property="og:title" content="<?php echo htmlspecialchars($page_title, ENT_QUOTES, 'UTF-8'); ?>">
    <meta property="og:description" content="<?php echo htmlspecialchars($page_description, ENT_QUOTES, 'UTF-8'); ?>">
    <meta property="og:url" content="https://www.shebainternational.com<?php echo parse_url(current_url(), PHP_URL_PATH); ?>">
    <meta property="og:site_name" content="Sheba International, Inc.">
    <meta property="og:locale" content="en_US">

    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="<?php echo htmlspecialchars($page_title, ENT_QUOTES, 'UTF-8'); ?>">
    <meta name="twitter:description" content="<?php echo htmlspecialchars($page_description, ENT_QUOTES, 'UTF-8'); ?>">

    <!-- Organization Schema Markup for Rich Results -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "Organization",
      "name": "Sheba International, Inc.",
      "url": "https://www.shebainternational.com/",
      "logo": "https://www.shebainternational.com/assets/images/logo.png",
      "description": "Global consulting firm providing expert services in healthcare, business, research, grant writing and evaluation, EHR consulting and training, workforce development, IT and web solutions.",
      "foundingDate": "1996",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "Huntington",
        "addressRegion": "West Virginia",
        "postalCode": "",
        "addressCountry": "US"
      },
      "contactPoint": {
        "@type": "ContactPoint",
        "contactType": "Customer Service",
        "availableLanguage": ["en"]
      },
      "sameAs": [
        "https://www.linkedin.com/company/sheba-international",
        "https://www.facebook.com/shebainternational"
      ]
    }
    </script>

    <!-- Performance Optimization -->
    <link rel="dns-prefetch" href="//fonts.googleapis.com">
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link rel="dns-prefetch" href="//cdnjs.cloudflare.com">
    <link rel="dns-prefetch" href="//cdn.jsdelivr.net">

    <!-- Preload critical resources -->
    <link rel="preload" href="<?= base_url('assets/frontend/css/bootstrap.min.css'); ?>" as="style">
    <link rel="preload" href="<?= base_url('assets/frontend/css/style.css'); ?>" as="style">

    <!-- Canonical URL - Always use new domain -->
    <?php
    $request_uri = parse_url(current_url(), PHP_URL_PATH);
    $canonical_url = "https://www.shebainternational.com" . $request_uri;
    
    // Remove query parameters
    if (strpos($canonical_url, '?') !== false) {
        $canonical_url = strtok($canonical_url, '?');
    }
    
    // Ensure trailing slash for homepage only
    if ($canonical_url === "https://www.shebainternational.com") {
        $canonical_url .= "/";
    }
    ?>
    <link rel="canonical" href="<?php echo htmlspecialchars($canonical_url, ENT_QUOTES, 'UTF-8'); ?>">

    <!-- Hreflang Tags for Language Targeting -->
    <link rel="alternate" hreflang="en" href="https://www.shebainternational.com<?php echo parse_url(current_url(), PHP_URL_PATH); ?>">
    <link rel="alternate" hreflang="x-default" href="https://www.shebainternational.com<?php echo parse_url(current_url(), PHP_URL_PATH); ?>">

    <!-- Favicon -->
<link rel="icon" type="image/png"
      href="<?= !empty($settings[0]['favicon']) ? $settings[0]['favicon'] : base_url('assets/frontend/img/favicon.ico'); ?>">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="<?= base_url('assets/frontend/lib/owlcarousel/assets/owl.carousel.min.css'); ?>" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="<?= base_url('assets/frontend/css/bootstrap.min.css'); ?>" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="<?= base_url('assets/frontend/css/style.css'); ?>" rel="stylesheet">
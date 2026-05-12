# 🚨 CRITICAL: Canonical URL Issue - Domain Hijacking Detected

## Problem Analysis
Google Search Console shows that your domain `https://www.shebainternational.com/` is being canonicalized to `https://gheraltaecotrekking.com/` - a completely different domain. This indicates a serious domain/server configuration issue.

## Immediate Actions Required

### 1. Contact Your Hosting Provider
**URGENT**: Contact your cPanel hosting provider immediately and report:
- Domain canonicalization issue
- Content appearing on wrong domain
- Possible domain hijacking or server misconfiguration

### 2. Check Domain DNS Settings
Verify your DNS configuration:
- A record should point to your hosting IP
- No CNAME conflicts
- Check for any unauthorized DNS changes

### 3. Server-Side Investigation
Check if your website is on shared hosting where multiple domains share the same document root or IP address.

### 4. Security Audit
- Scan for malware/backdoors
- Check for unauthorized redirects
- Verify file permissions
- Review access logs for suspicious activity

## Code-Level Fixes Applied

### ✅ Enhanced Canonical Tag
```php
<?php
$canonical_url = current_url();
if (strpos($canonical_url, '?') !== false) {
    $canonical_url = strtok($canonical_url, '?');
}
?>
<link rel="canonical" href="<?php echo htmlspecialchars($canonical_url, ENT_QUOTES, 'UTF-8'); ?>">
```

### ✅ Robots.txt Configuration
- Blocks sensitive directories
- References correct sitemap URL
- Allows search engine crawling

### ✅ XML Sitemap
- Auto-generated at `/sitemap.xml`
- Includes all important pages
- Proper XML structure

## Deployment Steps

### 1. Upload Files to cPanel
```bash
# Via FTP/SFTP or cPanel File Manager
# Upload all files from your local repository to public_html/
```

### 2. Update Robots.txt Sitemap URL
Replace the placeholder in `robots.txt`:
```
Sitemap: https://www.shebainternational.com/sitemap.xml
```

### 3. Verify Installation
- Visit `https://www.shebainternational.com/sitemap.xml`
- Check canonical tags in page source
- Test all routes work properly

## Google Search Console Actions

### 1. Request Re-indexing
- Go to URL Inspection tool
- Request indexing for your homepage
- Monitor for canonical URL changes

### 2. Submit Updated Sitemap
- Remove old sitemap if exists
- Submit new sitemap URL
- Monitor coverage reports

### 3. Check for Manual Actions
- Review Manual Actions report
- Check for domain-related penalties

## Prevention Measures

### 1. Domain Security
- Enable domain lock
- Use strong passwords
- Monitor WHOIS changes
- Set up domain alerts

### 2. Hosting Security
- Regular security scans
- Keep software updated
- Use SSL certificates
- Monitor server access logs

### 3. Content Protection
- Implement proper canonical tags
- Use robots.txt to control crawling
- Monitor for content duplication

## Monitoring & Maintenance

### Daily Checks
- Google Search Console coverage
- Server access logs
- Domain DNS status

### Weekly Checks
- Core Web Vitals
- Search rankings
- Backlink profile

### Monthly Audits
- Security scans
- Performance optimization
- Content updates

## Emergency Contacts

If this issue persists:
1. **Hosting Provider**: Contact support immediately
2. **Domain Registrar**: Verify domain ownership
3. **Google Support**: Report in Search Console
4. **Security Expert**: Consider professional audit

## Status Update Required

**IMPORTANT**: Update this document with resolution steps once the hosting/domain issue is fixed. The code-level SEO optimizations are complete, but the domain canonicalization issue must be resolved at the server level.</content>
<parameter name="filePath">c:\Users\IN-TECH\Downloads\git\shebainternational\CANONICAL_URL_EMERGENCY.md
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  final String name;
  final String title;
  final String? avatarUrl;
  final String? email;
  final String? phone;
  final String? website;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;

  const ProfileCardWidget({
    super.key,
    required this.name,
    required this.title,
    this.avatarUrl,
    this.email,
    this.phone,
    this.website,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final defaultBackgroundColor = backgroundColor ?? theme.cardColor;
    final defaultTextColor = textColor ?? theme.textTheme.bodyLarge?.color ?? Colors.black87;
    
    // Calculate text opacity for different elements
    final primaryTextColor = defaultTextColor;
    final secondaryTextColor = defaultTextColor.withOpacity(0.7);
    final tertiaryTextColor = defaultTextColor.withOpacity(0.6);

    return Container(
      width: width ?? 320,
      height: height,
      decoration: BoxDecoration(
        color: defaultBackgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Avatar Section
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: primaryTextColor.withOpacity(0.1),
                  width: 3,
                ),
              ),
              child: avatarUrl != null
                  ? ClipOval(
                      child: Image.network(
                        avatarUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return _buildDefaultAvatar(primaryTextColor);
                        },
                      ),
                    )
                  : _buildDefaultAvatar(primaryTextColor),
            ),
            
            const SizedBox(height: 20),
            
            // Name
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: primaryTextColor,
                letterSpacing: -0.5,
              ),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 8),
            
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor,
                letterSpacing: 0.2,
              ),
              textAlign: TextAlign.center,
            ),
            
            // Contact Information Section
            if (email != null || phone != null || website != null) ...[
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: primaryTextColor.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    if (email != null) _buildContactItem(
                      Icons.email_outlined,
                      email!,
                      tertiaryTextColor,
                      primaryTextColor,
                    ),
                    if (phone != null) _buildContactItem(
                      Icons.phone_outlined,
                      phone!,
                      tertiaryTextColor,
                      primaryTextColor,
                    ),
                    if (website != null) _buildContactItem(
                      Icons.language_outlined,
                      website!,
                      tertiaryTextColor,
                      primaryTextColor,
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildDefaultAvatar(Color textColor) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: textColor.withOpacity(0.1),
      ),
      child: Icon(
        Icons.person,
        size: 40,
        color: textColor.withOpacity(0.7),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text, Color textColor, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
            color: iconColor.withOpacity(0.7),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

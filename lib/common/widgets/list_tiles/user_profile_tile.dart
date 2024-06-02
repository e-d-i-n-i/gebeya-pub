import 'package:flutter/material.dart';
import 'package:gebeya_ecommerce_application/common/widgets/images/t_circular_image.dart';
import 'package:gebeya_ecommerce_application/utils/constants/colors.dart';
import 'package:gebeya_ecommerce_application/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Flutter ecommerce app',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: Pallette.white),
      ),
      subtitle: Text(
        'edini.inbox@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: Pallette.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.edit_square,
          color: Pallette.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:heka_store/Features/account/presentation/components/edit_profile/edit_profile_view_app_bar.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _firstNameController = TextEditingController(text: 'Benjamin');
  final _lastNameController = TextEditingController(text: 'Jack');
  final _emailController = TextEditingController(
    text: 'benjaminJack@gmail.com',
  );
  final _phoneController = TextEditingController(text: '+100******00');
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const EditProfileViewAppBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 28),
                      // Avatar
                      Center(
                        child: Stack(
                          children: [
                            UserAvatar(
                              imageUrl: 'https://i.pravatar.cc/150?img=12',
                              size: AppSizes.w80,
                            ),
                            Positioned(
                              bottom: 2,
                              right: 2,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: AppSizes.w24,
                                  height: AppSizes.w24,
                                  decoration: BoxDecoration(
                                    color: colors.primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    size: AppSizes.sp14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 14),

                      // Name
                      Text(
                        'Benjamin Jack',
                        style: TextTheme.of(context).titleMedium,
                      ),

                      const SizedBox(height: 32),

                      CustomTextFormField(
                        label: 'First name',
                        controller: _firstNameController,
                        hint: 'First name',
                        prefix: Icon(Icons.person_outline),
                        validator: (v) =>
                            v == null || v.isEmpty ? 'Required' : null,
                      ),

                      const SizedBox(height: 16),

                      CustomTextFormField(
                        label: 'Last name',
                        controller: _lastNameController,
                        hint: 'Last name',
                        prefix: Icon(Icons.person_outline),
                        validator: (v) =>
                            v == null || v.isEmpty ? 'Required' : null,
                      ),

                      const SizedBox(height: 16),
                      CustomTextFormField(
                        label: 'Email address',
                        controller: _emailController,
                        hint: 'Email address',
                        prefix: Icon(Icons.mail_outline),
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) {
                          if (v == null || v.isEmpty) return 'Required';
                          if (!v.contains('@')) return 'Invalid email';
                          return null;
                        },
                      ),

                      const SizedBox(height: 16),
                      CustomTextFormField(
                        label: 'Phone number',
                        controller: _phoneController,
                        hint: 'Phone number',
                        prefix: Icon(Icons.phone),
                        keyboardType: TextInputType.phone,
                        validator: (v) =>
                            v == null || v.isEmpty ? 'Required' : null,
                      ),

                      const SizedBox(height: 36),

                      // Save Button
                      CustomButton.outlined(
                        text: 'Save Changes',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';
import 'package:heka_store/Features/account/presentation/blocs/edit_profile/edit_profile_bloc.dart';
import 'package:heka_store/Features/account/presentation/blocs/edit_profile/edit_profile_event.dart';
import 'package:heka_store/Features/account/presentation/blocs/edit_profile/edit_profile_state.dart';
import 'package:heka_store/Features/account/presentation/blocs/profile_image/profile_image_bloc.dart';
import 'package:heka_store/Features/account/presentation/blocs/profile_image/profile_image_event.dart';
import 'package:heka_store/Features/account/presentation/blocs/profile_image/profile_image_state.dart';
import 'package:heka_store/Features/account/presentation/components/edit_profile/edit_profile_view_app_bar.dart';
import 'package:heka_store/core/extensions/color_extension.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/resources/app_sizes.dart';
import 'package:heka_store/core/widgets/custom_button/custom_button.dart';
import 'package:heka_store/core/widgets/custom_text_form_field.dart';
import 'package:heka_store/core/widgets/user_avater.dart';

class EditProfileViewBody extends StatefulWidget {
  const EditProfileViewBody({super.key, required this.userProfile});
  final UserProfile userProfile;

  @override
  State<EditProfileViewBody> createState() => _EditProfileViewBodyState();
}

class _EditProfileViewBodyState extends State<EditProfileViewBody> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _phoneController;
  final _formKey = GlobalKey<FormState>();
  final _imagePicker = ImagePicker();

  File? _selectedImage;
  bool _photoDeleted = false;

  @override
  void initState() {
    super.initState();
    final p = widget.userProfile;
    _firstNameController = TextEditingController(text: p.firstName);
    _lastNameController = TextEditingController(text: p.lastName);
    _emailController = TextEditingController(text: p.email);
    _phoneController = TextEditingController(text: p.phoneNumber);
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _showPhotoOptions() {
    final colors = context.myColors;
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle bar
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              Text('Profile Photo', style: TextTheme.of(context).titleMedium),
              const SizedBox(height: 16),

              // Camera option
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colors.primary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.camera_alt_outlined, color: colors.primary),
                ),
                title: const Text('Take a photo'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.camera);
                },
              ),

              // Gallery option
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colors.primary.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.photo_library_outlined,
                    color: colors.primary,
                  ),
                ),
                title: const Text('Choose from gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),

              // Delete option (only if profile has existing picture or a new one selected)
              if (widget.userProfile.profilePictureUrl != null ||
                  _selectedImage != null) ...[
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.delete_outline, color: Colors.red),
                  ),
                  title: const Text(
                    'Delete photo',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    _deletePhoto();
                  },
                ),
              ],

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final picked = await _imagePicker.pickImage(
      source: source,
      imageQuality: 80,
    );
    if (picked == null) return;

    setState(() {
      _selectedImage = File(picked.path);
      _photoDeleted = false; // لو كان محذوف، ارجع
    });
  }

  void _deletePhoto() {
    setState(() {
      _selectedImage = null;
      _photoDeleted = true;
    });
  }

  void _saveChanges() {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    if (_selectedImage != null) {
      context.read<ProfileImageBloc>().add(
        ProfileImageEvent.uploadProfilePicture(imagePath: _selectedImage!.path),
      );
    } else if (_photoDeleted) {
      context.read<ProfileImageBloc>().add(
        const ProfileImageEvent.deleteProfilePicture(),
      );
    }

    // 3. ابعت تعديل البيانات
    context.read<EditProfileBloc>().add(
      EditProfileEvent.editProfile(
        editProfileRequest: EditProfileRequest(
          firstName: _firstNameController.text.trim(),
          lastName: _lastNameController.text.trim(),
          phoneNumber: _phoneController.text.trim(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.myColors;
    final profile = widget.userProfile;

    return MultiBlocListener(
      listeners: [
        BlocListener<EditProfileBloc, EditProfileState>(
          listener: (context, state) {
            state.maybeMap(
              success: (_) {
                Navigator.pop(context, true);
              },
              failure: (f) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(f.message)));
              },
              orElse: () {},
            );
          },
        ),
        BlocListener<ProfileImageBloc, ProfileImageState>(
          listener: (context, state) {
            state.maybeMap(
              failure: (f) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(f.message)));
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Column(
        children: [
          const EditProfileViewAppBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
              child: Form(
                key: _formKey,
                child: Column(
                  spacing: AppSizes.h8,
                  children: [
                    SizedBox(height: AppSizes.h16),
                    Center(
                      child: BlocBuilder<ProfileImageBloc, ProfileImageState>(
                        builder: (context, state) {
                          final isLoading = state.maybeMap(
                            loading: (_) => true,
                            orElse: () => false,
                          );
                          return Stack(
                            children: [
                              // Avatar
                              UserAvatar(
                                imageFile: _selectedImage,
                                imageUrl: _photoDeleted
                                    ? null
                                    : profile.profilePictureUrl,
                                name: profile.fullName,
                                size: AppSizes.w100,
                              ),

                              if (isLoading)
                                SizedBox(
                                  width: AppSizes.w100,
                                  height: AppSizes.w100,
                                  child: const Center(
                                    child: CupertinoActivityIndicator(),
                                  ),
                                ),

                              // Edit button
                              Positioned(
                                bottom: 0,
                                right: 6,
                                child: GestureDetector(
                                  onTap: isLoading ? null : _showPhotoOptions,
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
                          );
                        },
                      ),
                    ),

                    Text(
                      profile.fullName,
                      style: TextTheme.of(context).titleMedium,
                    ),

                    SizedBox(height: AppSizes.h16),

                    // ─── Fields ────────────────────────────────────────
                    Row(
                      spacing: AppSizes.w8,
                      children: [
                        Flexible(
                          child: CustomTextFormField(
                            label: 'First name',
                            controller: _firstNameController,
                            hint: 'First name',
                            prefix: const Icon(Icons.person_outline),
                            validator: (v) =>
                                v == null || v.isEmpty ? 'Required' : null,
                          ),
                        ),
                        Flexible(
                          child: CustomTextFormField(
                            label: 'Last name',
                            controller: _lastNameController,
                            hint: 'Last name',
                            prefix: const Icon(Icons.person_outline),
                            validator: (v) =>
                                v == null || v.isEmpty ? 'Required' : null,
                          ),
                        ),
                      ],
                    ),
                    CustomTextFormField(
                      label: 'Phone number',
                      controller: _phoneController,
                      hint: 'Phone number',
                      prefix: const Icon(Icons.phone),
                      keyboardType: TextInputType.phone,
                      validator: (v) =>
                          v == null || v.isEmpty ? 'Required' : null,
                    ),

                    CustomTextFormField(
                      label: 'Email address',
                      controller: _emailController,
                      hint: 'Email address',
                      prefix: const Icon(Icons.mail_outline),
                      keyboardType: TextInputType.emailAddress,
                      enabled: false, // email is not editable
                      validator: (v) {
                        if (v == null || v.isEmpty) return 'Required';
                        if (!v.contains('@')) return 'Invalid email';
                        return null;
                      },
                    ),

                    SizedBox(height: AppSizes.h16),
                    // ─── Save button ───────────────────────────────────
                    BlocBuilder<EditProfileBloc, EditProfileState>(
                      builder: (context, state) {
                        final isLoading = state.maybeMap(
                          loading: (_) => true,
                          orElse: () => false,
                        );
                        return CustomButton(
                          text: isLoading ? 'Saving...' : 'Save Changes',
                          onPressed: isLoading ? null : _saveChanges,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

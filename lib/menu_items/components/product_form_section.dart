
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../location_picker_res/location_picker_res_screen.dart';

class ProductFormSection extends StatefulWidget {
  const ProductFormSection({super.key});

  @override
  State<ProductFormSection> createState() => _ProductFormSectionState();
}

class _ProductFormSectionState extends State<ProductFormSection> {
  bool isAvailable = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's add your first menu item",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.w400,
                height: 1.29,
                color: Color(0xFF3A353A),
              ),
            ),
            const SizedBox(height: 32),
            _buildImageUpload(),
            const SizedBox(height: 24),
            _buildTextField(
              label: 'Product Title',
              hint: 'Enter product title',
            ),
            const SizedBox(height: 24),
            _buildTextField(
              label: 'Product Description',
              hint: 'Enter product description',
              maxLines: 4,
            ),
            const SizedBox(height: 24),
            _buildCategoryDropdown(),
            const SizedBox(height: 24),
            _buildPriceField(),
            const SizedBox(height: 24),
            _buildAvailabilityToggle(),
            const SizedBox(height: 24),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageUpload() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Image',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: Color(0xFF3A353A),
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            // Implement image picker
          },
          child: Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC), width: 2),
              color: const Color(0xFFF3F4F6),
            ),
            child: const Center(
              child: Icon(Icons.add_photo_alternate_outlined, size: 48),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField({
    required String label,
    required String hint,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: Color(0xFF3A353A),
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              color: Color(0xFF7D7D7D),
              fontSize: 16,
              letterSpacing: -0.48,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFDCDCDC)),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(16),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildCategoryDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Category',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            color: Color(0xFF3A353A),
          ),
        ),
        const SizedBox(height: 4),
        InkWell(
          onTap: () {
            // Implement category selection
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFDCDCDC)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Click to choose category...',
                  style: TextStyle(
                    color: Color(0xFF7D7D7D),
                    fontSize: 16,
                    letterSpacing: -0.48,
                  ),
                ),
                Icon(Icons.arrow_drop_down, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text(
              'Price',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: Color(0xFF3A353A),
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.info_outline, size: 16),
          ],
        ),
        SizedBox(
          width: 120,
          child: TextFormField(
            decoration: InputDecoration(
              prefixText: 'SLE ',
              hintText: '1000',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xFFDCDCDC)),
              ),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.all(16),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Price is required';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAvailabilityToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text(
              'Availability',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
                color: Color(0xFF3A353A),
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.info_outline, size: 16),
          ],
        ),
        Switch(
          value: isAvailable,
          onChanged: (value) {
            setState(() {
              isAvailable = value;
            });
          },
          activeColor: const Color(0xFF0F52BA),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xFFDCDCDC)),
            ),
          ),
          child: const Text(
            'Back',
            style: TextStyle(
              color: Color(0xFF0F52BA),
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
               // Navigate to the Restaurant Profile Screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocationPickerResScreen(),
              ),
            );
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF0F52BA),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.15,
            ),
          ),
        ),
      ],
    );
  }
}
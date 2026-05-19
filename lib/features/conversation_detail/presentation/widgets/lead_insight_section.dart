import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app_colors.dart';
import '../../../../app_text_styles.dart';
import '../../../../common/app_dimens.dart';
import '../../domain/entities/lead_extraction.dart';
import '../cubit/lead_insight_cubit.dart';
import '../cubit/lead_insight_state.dart';

class LeadInsightSection extends StatelessWidget {
  const LeadInsightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeadInsightCubit, LeadInsightState>(
      builder: (context, state) {
        if (state is LeadInsightLoading) {
          return const _LeadInsightSkeleton();
        }
        if (state is LeadInsightLoaded) {
          return _LeadInsightCard(extraction: state.extraction);
        }
        if (state is LeadInsightError) {
          return _LeadInsightErrorTile(message: state.message);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _LeadInsightSkeleton extends StatelessWidget {
  const _LeadInsightSkeleton();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('AI Lead Summary', style: AppTextStyles.titleSmall),
        const SizedBox(height: AppDimens.spacingSm),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.spacingMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _SkeletonLine(width: 120, color: colors.border),
                const SizedBox(height: AppDimens.spacingSm),
                _SkeletonLine(color: colors.border),
                const SizedBox(height: AppDimens.spacingXs),
                _SkeletonLine(width: 200, color: colors.border),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _SkeletonLine extends StatelessWidget {
  final double? width;
  final Color color;

  const _SkeletonLine({this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 12,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(AppDimens.radiusXs)),
    );
  }
}

class _LeadInsightCard extends StatelessWidget {
  final LeadExtraction extraction;

  const _LeadInsightCard({required this.extraction});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('AI Lead Summary', style: AppTextStyles.titleSmall),
        const SizedBox(height: AppDimens.spacingSm),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.spacingMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Temperature + intent row
                Row(
                  children: [
                    _TemperatureBadge(temperature: extraction.leadTemperature),
                    const SizedBox(width: AppDimens.spacingSm),
                    Expanded(
                      child: Text(
                        extraction.intent,
                        style: AppTextStyles.labelLarge.copyWith(color: colors.textPrimary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimens.spacingMd),

                // Summary
                Text(extraction.summary, style: AppTextStyles.bodySmall.copyWith(color: colors.textSecondary)),

                // Products
                if (extraction.products.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.spacingMd),
                  Text('Products', style: AppTextStyles.labelSmall.copyWith(color: colors.textPrimary)),
                  const SizedBox(height: AppDimens.spacingXs),
                  Wrap(
                    spacing: AppDimens.spacingXs,
                    runSpacing: AppDimens.spacingXs,
                    children: extraction.products.map((p) => _InfoChip(label: p, colors: colors)).toList(),
                  ),
                ],

                // Customer needs
                if (extraction.customerNeeds.isNotEmpty) ...[
                  const SizedBox(height: AppDimens.spacingMd),
                  Text('Customer Needs', style: AppTextStyles.labelSmall.copyWith(color: colors.textPrimary)),
                  const SizedBox(height: AppDimens.spacingXs),
                  ...extraction.customerNeeds.map(
                    (need) => Padding(
                      padding: const EdgeInsets.only(bottom: AppDimens.spacingXs),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• ', style: AppTextStyles.bodySmall.copyWith(color: colors.textSecondary)),
                          Expanded(
                            child: Text(need, style: AppTextStyles.bodySmall.copyWith(color: colors.textSecondary)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],

                // Location + budget
                if (extraction.location != null || extraction.budgetHint != null) ...[
                  const SizedBox(height: AppDimens.spacingMd),
                  if (extraction.location != null)
                    _MetaRow(icon: Icons.location_on_outlined, value: extraction.location!, colors: colors),
                  if (extraction.budgetHint != null) ...[
                    if (extraction.location != null) const SizedBox(height: AppDimens.spacingXs),
                    _MetaRow(icon: Icons.attach_money_outlined, value: extraction.budgetHint!, colors: colors),
                  ],
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TemperatureBadge extends StatelessWidget {
  final String temperature;

  const _TemperatureBadge({required this.temperature});

  @override
  Widget build(BuildContext context) {
    final (color, label) = switch (temperature.toLowerCase()) {
      'hot' => (Colors.red, 'HOT'),
      'warm' => (Colors.orange, 'WARM'),
      _ => (Colors.blue, 'COLD'),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingSm, vertical: AppDimens.spacingXs),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(AppDimens.radiusFull),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.local_fire_department_outlined, size: AppDimens.iconSm, color: color),
          const SizedBox(width: AppDimens.spacingXs),
          Text(label, style: AppTextStyles.labelSmall.copyWith(color: color)),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final AppColorTheme colors;

  const _InfoChip({required this.label, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.spacingSm, vertical: AppDimens.spacingXs),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(AppDimens.radiusFull),
      ),
      child: Text(label, style: AppTextStyles.labelSmall.copyWith(color: colors.primary)),
    );
  }
}

class _MetaRow extends StatelessWidget {
  final IconData icon;
  final String value;
  final AppColorTheme colors;

  const _MetaRow({required this.icon, required this.value, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: AppDimens.iconSm, color: colors.textSecondary),
        const SizedBox(width: AppDimens.spacingXs),
        Expanded(
          child: Text(value, style: AppTextStyles.bodySmall.copyWith(color: colors.textSecondary)),
        ),
      ],
    );
  }
}

class _LeadInsightErrorTile extends StatelessWidget {
  final String message;

  const _LeadInsightErrorTile({required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('AI Lead Summary', style: AppTextStyles.titleSmall),
        const SizedBox(height: AppDimens.spacingSm),
        Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.spacingMd),
            child: Row(
              children: [
                Icon(Icons.error_outline, size: AppDimens.iconMd, color: Theme.of(context).colorScheme.error),
                const SizedBox(width: AppDimens.spacingSm),
                Expanded(
                  child: Text(
                    'Could not load AI summary',
                    style: AppTextStyles.bodySmall.copyWith(color: colors.textSecondary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

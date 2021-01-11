/// Example of a time series chart with a confidence interval.
///
/// Confidence interval is defined by specifying the upper and lower measure
/// bounds in the series.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class TimeSeriesConfidenceInterval extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  TimeSeriesConfidenceInterval(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory TimeSeriesConfidenceInterval.withSampleData() {
    return new TimeSeriesConfidenceInterval(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2015, 1, 1), 1.3),
      new TimeSeriesSales(new DateTime(2016, 1, 1), 2.5),
      new TimeSeriesSales(new DateTime(2017, 1, 1), 3.6),
      new TimeSeriesSales(new DateTime(2018, 1, 1), 4.9),
      new TimeSeriesSales(new DateTime(2019, 1, 1), 5.7),
      new TimeSeriesSales(new DateTime(2020, 1, 1), 6.8),


    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        // When the measureLowerBoundFn and measureUpperBoundFn is defined,
        // the line renderer will render the area around the bounds.
        measureLowerBoundFn: (TimeSeriesSales sales, _) => sales.sales - .5,
        measureUpperBoundFn: (TimeSeriesSales sales, _) => sales.sales + .5,
        data: data,
      )
    ];
  }
}




class TimeSeriesConfidenceInterval2 extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  TimeSeriesConfidenceInterval2(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory TimeSeriesConfidenceInterval2.withSampleData() {
    return new TimeSeriesConfidenceInterval2(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2015, 1, 1), 1.3),
      new TimeSeriesSales(new DateTime(2016, 1, 1), 1.2),
      new TimeSeriesSales(new DateTime(2017, 1, 1), 2.4),
      new TimeSeriesSales(new DateTime(2018, 1, 1), 2.6),
      new TimeSeriesSales(new DateTime(2019, 1, 1), 4.7),
      new TimeSeriesSales(new DateTime(2020, 1, 1), 5.8),


    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        // When the measureLowerBoundFn and measureUpperBoundFn is defined,
        // the line renderer will render the area around the bounds.
        measureLowerBoundFn: (TimeSeriesSales sales, _) => sales.sales - .2,
        measureUpperBoundFn: (TimeSeriesSales sales, _) => sales.sales + .2,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final double sales;

  TimeSeriesSales(this.time, this.sales);
}
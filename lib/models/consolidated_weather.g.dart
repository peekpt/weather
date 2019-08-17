// GENERATED CODE - DO NOT MODIFY BY HAND

part of consolidated_weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConsolidatedWeather> _$consolidatedWeatherSerializer =
    new _$ConsolidatedWeatherSerializer();

class _$ConsolidatedWeatherSerializer
    implements StructuredSerializer<ConsolidatedWeather> {
  @override
  final Iterable<Type> types = const [
    ConsolidatedWeather,
    _$ConsolidatedWeather
  ];
  @override
  final String wireName = 'ConsolidatedWeather';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ConsolidatedWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'applicableDate',
      serializers.serialize(object.applicableDate,
          specifiedType: const FullType(DateTime)),
      'weatherStateName',
      serializers.serialize(object.weatherStateName,
          specifiedType: const FullType(String)),
      'weatherStateAbbr',
      serializers.serialize(object.weatherStateAbbr,
          specifiedType: const FullType(String)),
      'windSpeed',
      serializers.serialize(object.windSpeed,
          specifiedType: const FullType(double)),
      'windDirection',
      serializers.serialize(object.windDirection,
          specifiedType: const FullType(double)),
      'windDirectionCompass',
      serializers.serialize(object.windDirectionCompass,
          specifiedType: const FullType(String)),
      'minTemp',
      serializers.serialize(object.minTemp, specifiedType: const FullType(int)),
      'maxTemp',
      serializers.serialize(object.maxTemp, specifiedType: const FullType(int)),
      'theTemp',
      serializers.serialize(object.theTemp, specifiedType: const FullType(int)),
      'airPressure',
      serializers.serialize(object.airPressure,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(double)),
      'predictability',
      serializers.serialize(object.predictability,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ConsolidatedWeather deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConsolidatedWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'applicableDate':
          result.applicableDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'weatherStateName':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weatherStateAbbr':
          result.weatherStateAbbr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'windSpeed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windDirection':
          result.windDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windDirectionCompass':
          result.windDirectionCompass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minTemp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxTemp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'theTemp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'airPressure':
          result.airPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'predictability':
          result.predictability = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ConsolidatedWeather extends ConsolidatedWeather {
  @override
  final int id;
  @override
  final DateTime applicableDate;
  @override
  final String weatherStateName;
  @override
  final String weatherStateAbbr;
  @override
  final double windSpeed;
  @override
  final double windDirection;
  @override
  final String windDirectionCompass;
  @override
  final int minTemp;
  @override
  final int maxTemp;
  @override
  final int theTemp;
  @override
  final double airPressure;
  @override
  final double humidity;
  @override
  final double visibility;
  @override
  final int predictability;

  factory _$ConsolidatedWeather(
          [void Function(ConsolidatedWeatherBuilder) updates]) =>
      (new ConsolidatedWeatherBuilder()..update(updates)).build();

  _$ConsolidatedWeather._(
      {this.id,
      this.applicableDate,
      this.weatherStateName,
      this.weatherStateAbbr,
      this.windSpeed,
      this.windDirection,
      this.windDirectionCompass,
      this.minTemp,
      this.maxTemp,
      this.theTemp,
      this.airPressure,
      this.humidity,
      this.visibility,
      this.predictability})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'id');
    }
    if (applicableDate == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'applicableDate');
    }
    if (weatherStateName == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'weatherStateName');
    }
    if (weatherStateAbbr == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'weatherStateAbbr');
    }
    if (windSpeed == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'windSpeed');
    }
    if (windDirection == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'windDirection');
    }
    if (windDirectionCompass == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'windDirectionCompass');
    }
    if (minTemp == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'minTemp');
    }
    if (maxTemp == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'maxTemp');
    }
    if (theTemp == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'theTemp');
    }
    if (airPressure == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'airPressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'humidity');
    }
    if (visibility == null) {
      throw new BuiltValueNullFieldError('ConsolidatedWeather', 'visibility');
    }
    if (predictability == null) {
      throw new BuiltValueNullFieldError(
          'ConsolidatedWeather', 'predictability');
    }
  }

  @override
  ConsolidatedWeather rebuild(
          void Function(ConsolidatedWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsolidatedWeatherBuilder toBuilder() =>
      new ConsolidatedWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsolidatedWeather &&
        id == other.id &&
        applicableDate == other.applicableDate &&
        weatherStateName == other.weatherStateName &&
        weatherStateAbbr == other.weatherStateAbbr &&
        windSpeed == other.windSpeed &&
        windDirection == other.windDirection &&
        windDirectionCompass == other.windDirectionCompass &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp &&
        airPressure == other.airPressure &&
        humidity == other.humidity &&
        visibility == other.visibility &&
        predictability == other.predictability;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0, id.hashCode),
                                                        applicableDate
                                                            .hashCode),
                                                    weatherStateName.hashCode),
                                                weatherStateAbbr.hashCode),
                                            windSpeed.hashCode),
                                        windDirection.hashCode),
                                    windDirectionCompass.hashCode),
                                minTemp.hashCode),
                            maxTemp.hashCode),
                        theTemp.hashCode),
                    airPressure.hashCode),
                humidity.hashCode),
            visibility.hashCode),
        predictability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConsolidatedWeather')
          ..add('id', id)
          ..add('applicableDate', applicableDate)
          ..add('weatherStateName', weatherStateName)
          ..add('weatherStateAbbr', weatherStateAbbr)
          ..add('windSpeed', windSpeed)
          ..add('windDirection', windDirection)
          ..add('windDirectionCompass', windDirectionCompass)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp)
          ..add('airPressure', airPressure)
          ..add('humidity', humidity)
          ..add('visibility', visibility)
          ..add('predictability', predictability))
        .toString();
  }
}

class ConsolidatedWeatherBuilder
    implements Builder<ConsolidatedWeather, ConsolidatedWeatherBuilder> {
  _$ConsolidatedWeather _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  DateTime _applicableDate;
  DateTime get applicableDate => _$this._applicableDate;
  set applicableDate(DateTime applicableDate) =>
      _$this._applicableDate = applicableDate;

  String _weatherStateName;
  String get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  String _weatherStateAbbr;
  String get weatherStateAbbr => _$this._weatherStateAbbr;
  set weatherStateAbbr(String weatherStateAbbr) =>
      _$this._weatherStateAbbr = weatherStateAbbr;

  double _windSpeed;
  double get windSpeed => _$this._windSpeed;
  set windSpeed(double windSpeed) => _$this._windSpeed = windSpeed;

  double _windDirection;
  double get windDirection => _$this._windDirection;
  set windDirection(double windDirection) =>
      _$this._windDirection = windDirection;

  String _windDirectionCompass;
  String get windDirectionCompass => _$this._windDirectionCompass;
  set windDirectionCompass(String windDirectionCompass) =>
      _$this._windDirectionCompass = windDirectionCompass;

  int _minTemp;
  int get minTemp => _$this._minTemp;
  set minTemp(int minTemp) => _$this._minTemp = minTemp;

  int _maxTemp;
  int get maxTemp => _$this._maxTemp;
  set maxTemp(int maxTemp) => _$this._maxTemp = maxTemp;

  int _theTemp;
  int get theTemp => _$this._theTemp;
  set theTemp(int theTemp) => _$this._theTemp = theTemp;

  double _airPressure;
  double get airPressure => _$this._airPressure;
  set airPressure(double airPressure) => _$this._airPressure = airPressure;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  int _predictability;
  int get predictability => _$this._predictability;
  set predictability(int predictability) =>
      _$this._predictability = predictability;

  ConsolidatedWeatherBuilder();

  ConsolidatedWeatherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _applicableDate = _$v.applicableDate;
      _weatherStateName = _$v.weatherStateName;
      _weatherStateAbbr = _$v.weatherStateAbbr;
      _windSpeed = _$v.windSpeed;
      _windDirection = _$v.windDirection;
      _windDirectionCompass = _$v.windDirectionCompass;
      _minTemp = _$v.minTemp;
      _maxTemp = _$v.maxTemp;
      _theTemp = _$v.theTemp;
      _airPressure = _$v.airPressure;
      _humidity = _$v.humidity;
      _visibility = _$v.visibility;
      _predictability = _$v.predictability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsolidatedWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConsolidatedWeather;
  }

  @override
  void update(void Function(ConsolidatedWeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConsolidatedWeather build() {
    final _$result = _$v ??
        new _$ConsolidatedWeather._(
            id: id,
            applicableDate: applicableDate,
            weatherStateName: weatherStateName,
            weatherStateAbbr: weatherStateAbbr,
            windSpeed: windSpeed,
            windDirection: windDirection,
            windDirectionCompass: windDirectionCompass,
            minTemp: minTemp,
            maxTemp: maxTemp,
            theTemp: theTemp,
            airPressure: airPressure,
            humidity: humidity,
            visibility: visibility,
            predictability: predictability);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

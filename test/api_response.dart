const sampleJson = '''
{
  "cod": "200",
  "message": 0,
  "cnt": 40,
  "list": [
    {
      "dt": 1724868000,
      "main": {
        "temp": 299.68,
        "feels_like": 299.68,
        "temp_min": 298.69,
        "temp_max": 299.68,
        "pressure": 1001,
        "sea_level": 1001,
        "grnd_level": 995,
        "humidity": 85,
        "temp_kf": 0.99
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 6.58,
        "deg": 172,
        "gust": 12.92
      },
      "visibility": 10000,
      "pop": 0.53,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-28 18:00:00"
    },
    {
      "dt": 1724878800,
      "main": {
        "temp": 298.88,
        "feels_like": 299.78,
        "temp_min": 298.23,
        "temp_max": 298.88,
        "pressure": 1000,
        "sea_level": 1000,
        "grnd_level": 994,
        "humidity": 87,
        "temp_kf": 0.65
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 6.76,
        "deg": 181,
        "gust": 11.57
      },
      "visibility": 10000,
      "pop": 0.41,
      "rain": {
        "3h": 0.29
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-28 21:00:00"
    },
    {
      "dt": 1724889600,
      "main": {
        "temp": 297.64,
        "feels_like": 298.36,
        "temp_min": 297.64,
        "temp_max": 297.64,
        "pressure": 999,
        "sea_level": 999,
        "grnd_level": 994,
        "humidity": 85,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 92
      },
      "wind": {
        "speed": 4.3,
        "deg": 172,
        "gust": 12.21
      },
      "visibility": 10000,
      "pop": 0.71,
      "rain": {
        "3h": 0.3
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-29 00:00:00"
    },
    {
      "dt": 1724900400,
      "main": {
        "temp": 299.17,
        "feels_like": 299.17,
        "temp_min": 299.17,
        "temp_max": 299.17,
        "pressure": 1001,
        "sea_level": 1001,
        "grnd_level": 996,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 99
      },
      "wind": {
        "speed": 6.38,
        "deg": 176,
        "gust": 12.29
      },
      "visibility": 10000,
      "pop": 0.2,
      "rain": {
        "3h": 0.14
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-29 03:00:00"
    },
    {
      "dt": 1724911200,
      "main": {
        "temp": 301.37,
        "feels_like": 304.84,
        "temp_min": 301.37,
        "temp_max": 301.37,
        "pressure": 1001,
        "sea_level": 1001,
        "grnd_level": 996,
        "humidity": 74,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 6.66,
        "deg": 176,
        "gust": 11.74
      },
      "visibility": 10000,
      "pop": 0.67,
      "rain": {
        "3h": 0.66
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-29 06:00:00"
    },
    {
      "dt": 1724922000,
      "main": {
        "temp": 304.06,
        "feels_like": 309.09,
        "temp_min": 304.06,
        "temp_max": 304.06,
        "pressure": 999,
        "sea_level": 999,
        "grnd_level": 994,
        "humidity": 65,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 43
      },
      "wind": {
        "speed": 9.98,
        "deg": 177,
        "gust": 13.03
      },
      "visibility": 9262,
      "pop": 1,
      "rain": {
        "3h": 1.75
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-29 09:00:00"
    },
    {
      "dt": 1724932800,
      "main": {
        "temp": 300.04,
        "feels_like": 302.74,
        "temp_min": 300.04,
        "temp_max": 300.04,
        "pressure": 999,
        "sea_level": 999,
        "grnd_level": 994,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 57
      },
      "wind": {
        "speed": 6.8,
        "deg": 178,
        "gust": 12.33
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 1.81
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-29 12:00:00"
    },
    {
      "dt": 1724943600,
      "main": {
        "temp": 299.5,
        "feels_like": 299.5,
        "temp_min": 299.5,
        "temp_max": 299.5,
        "pressure": 1001,
        "sea_level": 1001,
        "grnd_level": 996,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 97
      },
      "wind": {
        "speed": 6.01,
        "deg": 183,
        "gust": 11.1
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 1.07
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-29 15:00:00"
    },
    {
      "dt": 1724954400,
      "main": {
        "temp": 299.31,
        "feels_like": 299.31,
        "temp_min": 299.31,
        "temp_max": 299.31,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 5.31,
        "deg": 174,
        "gust": 10.81
      },
      "visibility": 10000,
      "pop": 0.8,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-29 18:00:00"
    },
    {
      "dt": 1724965200,
      "main": {
        "temp": 298.87,
        "feels_like": 299.69,
        "temp_min": 298.87,
        "temp_max": 298.87,
        "pressure": 1002,
        "sea_level": 1002,
        "grnd_level": 997,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 86
      },
      "wind": {
        "speed": 5.02,
        "deg": 156,
        "gust": 11.47
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-29 21:00:00"
    },
    {
      "dt": 1724976000,
      "main": {
        "temp": 297.77,
        "feels_like": 298.61,
        "temp_min": 297.77,
        "temp_max": 297.77,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 89,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 82
      },
      "wind": {
        "speed": 5.22,
        "deg": 138,
        "gust": 11.21
      },
      "visibility": 10000,
      "pop": 0.2,
      "rain": {
        "3h": 0.49
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-30 00:00:00"
    },
    {
      "dt": 1724986800,
      "main": {
        "temp": 299.83,
        "feels_like": 302.35,
        "temp_min": 299.83,
        "temp_max": 299.83,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 82,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 81
      },
      "wind": {
        "speed": 6.2,
        "deg": 151,
        "gust": 10.74
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-30 03:00:00"
    },
    {
      "dt": 1724997600,
      "main": {
        "temp": 302.73,
        "feels_like": 306.97,
        "temp_min": 302.73,
        "temp_max": 302.73,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 69,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 79
      },
      "wind": {
        "speed": 6.77,
        "deg": 169,
        "gust": 9.58
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-30 06:00:00"
    },
    {
      "dt": 1725008400,
      "main": {
        "temp": 304.73,
        "feels_like": 309.26,
        "temp_min": 304.73,
        "temp_max": 304.73,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 60,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 93
      },
      "wind": {
        "speed": 7.47,
        "deg": 176,
        "gust": 9.19
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-30 09:00:00"
    },
    {
      "dt": 1725019200,
      "main": {
        "temp": 303.63,
        "feels_like": 308.34,
        "temp_min": 303.63,
        "temp_max": 303.63,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 66,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04d"
        }
      ],
      "clouds": {
        "all": 83
      },
      "wind": {
        "speed": 6.41,
        "deg": 173,
        "gust": 8.48
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-30 12:00:00"
    },
    {
      "dt": 1725030000,
      "main": {
        "temp": 300.74,
        "feels_like": 304.25,
        "temp_min": 300.74,
        "temp_max": 300.74,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 5.2,
        "deg": 169,
        "gust": 10.18
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-30 15:00:00"
    },
    {
      "dt": 1725040800,
      "main": {
        "temp": 299.89,
        "feels_like": 302.65,
        "temp_min": 299.89,
        "temp_max": 299.89,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 1001,
        "humidity": 84,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 4.07,
        "deg": 174,
        "gust": 8.2
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-30 18:00:00"
    },
    {
      "dt": 1725051600,
      "main": {
        "temp": 299.05,
        "feels_like": 299.97,
        "temp_min": 299.05,
        "temp_max": 299.05,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 87,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.69,
        "deg": 166,
        "gust": 5.94
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-30 21:00:00"
    },
    {
      "dt": 1725062400,
      "main": {
        "temp": 298.4,
        "feels_like": 299.33,
        "temp_min": 298.4,
        "temp_max": 298.4,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 1000,
        "humidity": 90,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 800,
          "main": "Clear",
          "description": "clear sky",
          "icon": "01n"
        }
      ],
      "clouds": {
        "all": 0
      },
      "wind": {
        "speed": 2.8,
        "deg": 157,
        "gust": 5.66
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-31 00:00:00"
    },
    {
      "dt": 1725073200,
      "main": {
        "temp": 300.35,
        "feels_like": 303.45,
        "temp_min": 300.35,
        "temp_max": 300.35,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 1003,
        "humidity": 81,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 19
      },
      "wind": {
        "speed": 3.32,
        "deg": 169,
        "gust": 4.98
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-31 03:00:00"
    },
    {
      "dt": 1725084000,
      "main": {
        "temp": 304.71,
        "feels_like": 309.22,
        "temp_min": 304.71,
        "temp_max": 304.71,
        "pressure": 1008,
        "sea_level": 1008,
        "grnd_level": 1002,
        "humidity": 60,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 38
      },
      "wind": {
        "speed": 3.17,
        "deg": 204,
        "gust": 3.72
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-31 06:00:00"
    },
    {
      "dt": 1725094800,
      "main": {
        "temp": 307.35,
        "feels_like": 311.31,
        "temp_min": 307.35,
        "temp_max": 307.35,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 999,
        "humidity": 48,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 26
      },
      "wind": {
        "speed": 2.97,
        "deg": 209,
        "gust": 3.2
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-31 09:00:00"
    },
    {
      "dt": 1725105600,
      "main": {
        "temp": 307.13,
        "feels_like": 311.5,
        "temp_min": 307.13,
        "temp_max": 307.13,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 999,
        "humidity": 50,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 32
      },
      "wind": {
        "speed": 3.1,
        "deg": 225,
        "gust": 3.97
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-08-31 12:00:00"
    },
    {
      "dt": 1725116400,
      "main": {
        "temp": 302.52,
        "feels_like": 306.91,
        "temp_min": 302.52,
        "temp_max": 302.52,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 1001,
        "humidity": 71,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 74
      },
      "wind": {
        "speed": 3.84,
        "deg": 204,
        "gust": 6.64
      },
      "visibility": 10000,
      "pop": 0.2,
      "rain": {
        "3h": 0.11
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-31 15:00:00"
    },
    {
      "dt": 1725127200,
      "main": {
        "temp": 301.62,
        "feels_like": 305.92,
        "temp_min": 301.62,
        "temp_max": 301.62,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 1001,
        "humidity": 77,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 64
      },
      "wind": {
        "speed": 2.39,
        "deg": 194,
        "gust": 3.81
      },
      "visibility": 10000,
      "pop": 0.2,
      "rain": {
        "3h": 0.14
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-31 18:00:00"
    },
    {
      "dt": 1725138000,
      "main": {
        "temp": 300.57,
        "feels_like": 303.85,
        "temp_min": 300.57,
        "temp_max": 300.57,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 80,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 72
      },
      "wind": {
        "speed": 3.23,
        "deg": 250,
        "gust": 6.24
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-08-31 21:00:00"
    },
    {
      "dt": 1725148800,
      "main": {
        "temp": 299.84,
        "feels_like": 302.45,
        "temp_min": 299.84,
        "temp_max": 299.84,
        "pressure": 1006,
        "sea_level": 1006,
        "grnd_level": 1001,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 60
      },
      "wind": {
        "speed": 2.9,
        "deg": 256,
        "gust": 5.09
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-01 00:00:00"
    },
    {
      "dt": 1725159600,
      "main": {
        "temp": 301.43,
        "feels_like": 304.98,
        "temp_min": 301.43,
        "temp_max": 301.43,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 1002,
        "humidity": 74,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 14
      },
      "wind": {
        "speed": 3.01,
        "deg": 267,
        "gust": 3.77
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-01 03:00:00"
    },
    {
      "dt": 1725170400,
      "main": {
        "temp": 305.12,
        "feels_like": 309.28,
        "temp_min": 305.12,
        "temp_max": 305.12,
        "pressure": 1007,
        "sea_level": 1007,
        "grnd_level": 1001,
        "humidity": 57,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 17
      },
      "wind": {
        "speed": 2.3,
        "deg": 249,
        "gust": 2.1
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-01 06:00:00"
    },
    {
      "dt": 1725181200,
      "main": {
        "temp": 307.74,
        "feels_like": 311.8,
        "temp_min": 307.74,
        "temp_max": 307.74,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 999,
        "humidity": 47,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "clouds": {
        "all": 18
      },
      "wind": {
        "speed": 2.94,
        "deg": 243,
        "gust": 2.25
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-01 09:00:00"
    },
    {
      "dt": 1725192000,
      "main": {
        "temp": 307.66,
        "feels_like": 311.3,
        "temp_min": 307.66,
        "temp_max": 307.66,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 46,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 802,
          "main": "Clouds",
          "description": "scattered clouds",
          "icon": "03d"
        }
      ],
      "clouds": {
        "all": 31
      },
      "wind": {
        "speed": 2.98,
        "deg": 266,
        "gust": 2.88
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-01 12:00:00"
    },
    {
      "dt": 1725202800,
      "main": {
        "temp": 304.53,
        "feels_like": 308.04,
        "temp_min": 304.53,
        "temp_max": 304.53,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 999,
        "humidity": 57,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 58
      },
      "wind": {
        "speed": 2.18,
        "deg": 276,
        "gust": 3.57
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-01 15:00:00"
    },
    {
      "dt": 1725213600,
      "main": {
        "temp": 303.57,
        "feels_like": 307.72,
        "temp_min": 303.57,
        "temp_max": 303.57,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 64,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 803,
          "main": "Clouds",
          "description": "broken clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 79
      },
      "wind": {
        "speed": 1.28,
        "deg": 307,
        "gust": 2.18
      },
      "visibility": 10000,
      "pop": 0,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-01 18:00:00"
    },
    {
      "dt": 1725224400,
      "main": {
        "temp": 301.97,
        "feels_like": 305.49,
        "temp_min": 301.97,
        "temp_max": 301.97,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 998,
        "humidity": 70,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 1.49,
        "deg": 58,
        "gust": 1.22
      },
      "visibility": 10000,
      "pop": 0.13,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-01 21:00:00"
    },
    {
      "dt": 1725235200,
      "main": {
        "temp": 301.32,
        "feels_like": 304.88,
        "temp_min": 301.32,
        "temp_max": 301.32,
        "pressure": 1004,
        "sea_level": 1004,
        "grnd_level": 998,
        "humidity": 75,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 2.12,
        "deg": 280,
        "gust": 4.14
      },
      "visibility": 10000,
      "pop": 0.1,
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-02 00:00:00"
    },
    {
      "dt": 1725246000,
      "main": {
        "temp": 301.35,
        "feels_like": 305.43,
        "temp_min": 301.35,
        "temp_max": 301.35,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 1000,
        "humidity": 78,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 3.09,
        "deg": 281,
        "gust": 5
      },
      "visibility": 10000,
      "pop": 0.41,
      "rain": {
        "3h": 0.1
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-02 03:00:00"
    },
    {
      "dt": 1725256800,
      "main": {
        "temp": 305.33,
        "feels_like": 310.96,
        "temp_min": 305.33,
        "temp_max": 305.33,
        "pressure": 1005,
        "sea_level": 1005,
        "grnd_level": 999,
        "humidity": 61,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 97
      },
      "wind": {
        "speed": 3.1,
        "deg": 286,
        "gust": 3.4
      },
      "visibility": 10000,
      "pop": 0.89,
      "rain": {
        "3h": 0.89
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-02 06:00:00"
    },
    {
      "dt": 1725267600,
      "main": {
        "temp": 305.49,
        "feels_like": 310.71,
        "temp_min": 305.49,
        "temp_max": 305.49,
        "pressure": 1002,
        "sea_level": 1002,
        "grnd_level": 997,
        "humidity": 59,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 501,
          "main": "Rain",
          "description": "moderate rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 96
      },
      "wind": {
        "speed": 1.27,
        "deg": 219,
        "gust": 2.75
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 4.8
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-02 09:00:00"
    },
    {
      "dt": 1725278400,
      "main": {
        "temp": 301.76,
        "feels_like": 305.9,
        "temp_min": 301.76,
        "temp_max": 301.76,
        "pressure": 1002,
        "sea_level": 1002,
        "grnd_level": 996,
        "humidity": 75,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10d"
        }
      ],
      "clouds": {
        "all": 98
      },
      "wind": {
        "speed": 2.98,
        "deg": 171,
        "gust": 4.27
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 0.57
      },
      "sys": {
        "pod": "d"
      },
      "dt_txt": "2024-09-02 12:00:00"
    },
    {
      "dt": 1725289200,
      "main": {
        "temp": 300.36,
        "feels_like": 303.69,
        "temp_min": 300.36,
        "temp_max": 300.36,
        "pressure": 1003,
        "sea_level": 1003,
        "grnd_level": 998,
        "humidity": 83,
        "temp_kf": 0
      },
      "weather": [
        {
          "id": 500,
          "main": "Rain",
          "description": "light rain",
          "icon": "10n"
        }
      ],
      "clouds": {
        "all": 100
      },
      "wind": {
        "speed": 4.33,
        "deg": 186,
        "gust": 6.67
      },
      "visibility": 10000,
      "pop": 1,
      "rain": {
        "3h": 0.87
      },
      "sys": {
        "pod": "n"
      },
      "dt_txt": "2024-09-02 15:00:00"
    }
  ],
  "city": {
    "id": 1279233,
    "name": "Ahmedabad",
    "coord": {
      "lat": 23.0225,
      "lon": 72.5714
    },
    "country": "IN",
    "population": 3719710,
    "timezone": 19800,
    "sunrise": 1724806256,
    "sunset": 1724851881
  }
}
''';

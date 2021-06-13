#include <DHT.h>
#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#define DHTPIN 0

String apiKey = "LYS5IUUMS9NB4CTU";
const char *ssid =  "Dattakunj";
const char *pass =  "9867171390";
const char *mysql_server = "http://192.168.1.105/nodemcu/writedb.php";
const char *server = "api.thingspeak.com"; 

// DHT dht(DHTPIN, DHT11)
WiFiClient client;

void setup() {
  Serial.begin(9600);
  delay(10);

  WiFi.begin(ssid, pass);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("WiFi connected");
}

void sendDataToThingspeakAndMySql(int t, int h) {

  if (isnan(h) || isnan(t)) {
    Serial.println("Failed to read from DHT sensor!");
    return;
  }

  if (client.connect(server, 80)) {

    String postStr = apiKey;
    postStr += "&field1=";
    postStr += String(t);
    postStr += "&field2=";
    postStr += String(h);
    postStr += "\r\n\r\n";

    client.print("POST /update HTTP/1.1\n");
    client.print("Host: api.thingspeak.com\n");
    client.print("Connection: close\n");
    client.print("X-THINGSPEAKAPIKEY: " + apiKey + "\n");
    client.print("Content-Type: application/x-www-form-urlencoded\n");
    client.print("Content-Length: ");
    client.print(postStr.length());
    client.print("\n\n");
    client.print(postStr);

    Serial.print("Temperature: ");
    Serial.print(t);
    Serial.print(" degrees Celcius, Humidity: ");
    Serial.print(h);
    Serial.println("%. Send to Thingspeak.");
  }

  client.stop();
  Serial.println("Waiting...");

  delay(1000);

  sendDataToMySql(t, h);
}

void sendDataToMySql(int t, int h) {

  if (WiFi.status() == WL_CONNECTED) {
    HTTPClient http;

    http.begin(mysql_server);
    http.addHeader("Content-Type", "application/x-www-form-urlencoded");

    String httpRequestData = "&temp=" + String(t) + "&humi=" + String(h);
    Serial.print("httpRequestData: ");
    Serial.println(httpRequestData);

    int httpResponseCode = http.POST(httpRequestData);

    if (httpResponseCode > 0) {
      Serial.print("HTTP Response code: ");
      Serial.println(httpResponseCode);
    }
    else {
      Serial.print("Error code: ");
      Serial.println(httpResponseCode);
    }

    http.end();
  }
  else {
    Serial.println("WiFi Disconnected");
  }

  delay(30000);
}

void loop() {
  // thingspeak values
  float h = 64.45;
  float t = 33.26;

  //mysql values
  // t = 22, h = 72

  sendDataToThingspeakAndMySql(h, t);
}

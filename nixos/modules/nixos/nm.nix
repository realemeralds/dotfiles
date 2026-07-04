{ pkgs, ... }: {
  sops.secrets."network-manager.env" = {
    sopsFile = ../../secrets/network-manager.env;
    format = "dotenv";
  };

  networking.networkmanager.ensureProfiles = {
    environmentFiles = [ "/run/secrets/network-manager.env" ];
    profiles = {
      "filo-hotspot" = {
        connection = {
          id = "filo-hotspot";
          interface-name = "wlo1";
          type = "wifi";
          uuid = "27e5896c-1940-4bc4-ac03-ac7a2fc47199";
        };
        ipv4 = {
          method = "auto";
        };
        ipv6 = {
          addr-gen-mode = "default";
          method = "auto";
        };
        proxy = { };
        wifi = {
          mode = "infrastructure";
          ssid = "filo-hotspot";
        };
        wifi-security = {
          auth-alg = "open";
          key-mgmt = "wpa-psk";
          psk = "$hotspot_pw";
        };
      };
      SINGTEL-9DPY = {
        connection = {
          id = "SINGTEL-9DPY";
          interface-name = "wlo1";
          timestamp = "1782667958";
          type = "wifi";
          uuid = "cb78a755-6259-44b6-ab80-023b4a78247b";
        };
        ipv4 = {
          dns = "192.168.1.69;";
          ignore-auto-dns = "true";
          method = "auto";
        };
        ipv6 = {
          addr-gen-mode = "default";
          method = "auto";
        };
        proxy = { };
        wifi = {
          mode = "infrastructure";
          ssid = "SINGTEL-9DPY";
        };
        wifi-security = {
          key-mgmt = "wpa-psk";
          psk = "$home_wifi_pw";
        };
      };
      "Wireless@SGx" = {
        "802-1x" = {
          domain-suffix-match = "uniaaa2.wifi.starhub.net.sg";
          eap = "peap;";
          identity = "essa-d4whdXBfZEZSVKtzi4mBONlhnH8@starhub";
          password = "$sgx_pw";
          phase2-auth = "mschapv2";
        };
        connection = {
          id = "Wireless@SGx";
          interface-name = "wlo1";
          type = "wifi";
          uuid = "85ea3362-94c0-418d-bd20-b5dec6e2befc";
        };
        ipv4 = {
          method = "auto";
        };
        ipv6 = {
          addr-gen-mode = "default";
          method = "auto";
        };
        proxy = { };
        wifi = {
          mode = "infrastructure";
          ssid = "Wireless@SGx";
        };
        wifi-security = {
          auth-alg = "open";
          key-mgmt = "wpa-eap";
        };
      };
    };
  };
}

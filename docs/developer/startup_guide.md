# Shadowlands Server Post-Build Startup Guide

After building the DekkCore Shadowlands server, perform the following configuration steps before launching `bnetserver` and `worldserver` for the first time.

## 1. Copy and edit configuration files

From the build directory, copy the example configuration files and adjust them:

```bash
cp src/server/bnetserver/bnetserver.conf.dist bnetserver.conf
cp src/server/worldserver/worldserver.conf.dist worldserver.conf
```

Open both newly created files in a text editor and review the settings outlined below.

## 2. Essential `bnetserver.conf` options

| Setting | Purpose |
| --- | --- |
| **BindIP** | IP address bnetserver listens on (`0.0.0.0` to listen on all interfaces). |
| **BattlenetPort** | Port for Battle.net logins. Default: `1119`. |
| **LoginREST.Port** | Port for REST logins and the launcher. Default: `8081`. |
| **LoginREST.ExternalAddress / LoginREST.LocalAddress** | Public and LAN IPs advertised to clients. |

Make sure these ports are reachable through your firewall/NAT if clients connect from other machines.

## 3. Essential `worldserver.conf` options

| Setting | Purpose |
| --- | --- |
| **RealmID** | Must match the `id` column in the `realmlist` table. |
| **DataDir** | Path to the extracted game client data. |
| **WorldServerPort** | Primary game connection port. Default: `8085`. |
| **InstanceServerPort** | Secondary instance port. Default: `8086`. |
| **BindIP** | IP address worldserver listens on. |
| **LoginDatabaseInfo / WorldDatabaseInfo / CharacterDatabaseInfo / HotfixDatabaseInfo** | MySQL connection strings for the databases. |

## 4. Realmlist database entry and ports

The `realmlist` table determines how clients reach the world server. A typical entry looks like:

```sql
REPLACE INTO `realmlist` (`id`, `name`, `address`, `localAddress`, `localSubnetMask`, `port`, `icon`, `flag`, `timezone`, `allowedSecurityLevel`, `population`, `gamebuild`, `Region`, `Battlegroup`) VALUES (1, 'Localhost', '127.0.0.1', '127.0.0.1', '255.255.255.0', 8085, 0, 2, 1, 0, 0, 45745, 1, 1);
```

**Important:** The `port` column in this table must match the `WorldServerPort` value in `worldserver.conf`. If you change the server port, update both places accordingly. Clients connect to this port after choosing the realm.

### Why no `gameport` column?

Older projects such as *LegionCore* stored two columns in `realmlist`: `port` (login/auth port) and `gameport` (world server port). DekkCore Shadowlands separates the login service (`bnetserver`) from the game service (`worldserver`). The login ports are configured exclusively in `bnetserver.conf`, so the database only needs a single `port` for the game connection. Removing `gameport` avoids redundancy and reflects the Battle.net style architecture.

## 5. Final checklist

1. Verify database credentials and paths in both configuration files.
2. Ensure the `realmlist` entry contains the reachable IP addresses and the same `port` as `WorldServerPort`.
3. Open firewall/NAT rules for the following ports:
   - `BattlenetPort` (default 1119)
   - `LoginREST.Port` (default 8081)
   - `WorldServerPort` (default 8085)
   - `InstanceServerPort` (default 8086)
4. Start `bnetserver` first, then `worldserver`.

With these settings reviewed, your Shadowlands server should accept connections correctly on the first launch.

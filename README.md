# Hello World in Dart

Study application to dart to simple cli to calc

## Install
```bash
dart pub global activate --source git https://github.com/brunodavi/dart-calc.git
```

### Fix Errors

#### Command dart-calc not found
Add this line in `~/.bashrc`

```bash
export PATH="$PATH:$HOME/.pub-cache/bin"
```

After run
```bash
source ~/.bashrc
```

#### Permission denied
```bash
chmod +x ~/.pub-cache/bin/dart-calc
```

### Uninstall
```bash
dart pub global deactivate dart_calc
```

## How to use

### Run
```bash
dart-calc 1 + 1
# 1 + 1 = 2
```

### Errors
```bash
dart-calc 1 + 1 + 2
# Invalid argument
# Try: dart-calc 6 - 5
```

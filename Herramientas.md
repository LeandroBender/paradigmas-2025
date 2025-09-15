# Herramientas y Configuración del Entorno
**Paradigmas de Programación - Universidad Adventista del Plata**

---

## 🐙 Configuración de GitHub

### Instalar Git
Antes que nada, necesitás tener Git instalado:

**Windows:**
- Descargá desde [git-scm.com](https://git-scm.com/)
- Durante la instalación, asegurate de marcar "Git Bash Here"
- También podés usar `winget install Git.Git` si tenés winget

**macOS:**
- **Homebrew:** `brew install git`
- **Xcode:** `xcode-select --install`
- **Descarga directa:** [git-scm.com](https://git-scm.com/)

**Linux:**
- **Ubuntu/Debian:** `sudo apt install git`
- **Fedora:** `sudo dnf install git`
- **Arch:** `sudo pacman -S git`

### Crear tu cuenta
1. Andá a [github.com](https://github.com/) y hacé click en "Sign up"
2. Elegí un **username** que sea profesional (lo vas a usar en el futuro laboral)
3. Usá tu **email de la universidad** o uno personal que revises seguido
4. Verificá tu email cuando te llegue la confirmación

### Configurar Git localmente
Una vez que tengas tu cuenta, configurá Git en tu máquina:

```bash
# Configurar tu nombre (usar tu nombre real)
git config --global user.name "Tu Nombre Completo"

# Configurar tu email (el mismo que usaste en GitHub)
git config --global user.email "tu-email@ejemplo.com"

# Verificar configuración
git config --list
```

### Autenticación con GitHub
**Git Credential Manager (Recomendado - Más fácil)**

Git ya viene con un credential manager que hace todo automático:

1. La primera vez que hagas `git push` o `git clone` de un repo privado
2. Te va a abrir el navegador para que te logees en GitHub
3. Una vez que te autenticas, **Git guarda tus credenciales automáticamente**
4. No vas a tener que volver a poner usuario y contraseña

**¿Qué hacer?**
- Nada especial, simplemente usá Git normalmente
- Cuando te pida autenticación, seguí las instrucciones en pantalla
- Si te da problemas, asegurate de tener Git actualizado

**Alternativa: SSH**
Si querés algo más avanzado, podés configurar claves SSH siguiendo la [guía oficial de GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

### ¿Por qué GitHub?
- **Portafolio:** Tus proyectos quedan públicos y los podés mostrar
- **Colaboración:** Para trabajos en grupo
- **Backup:** Nunca vas a perder tu código
- **Industria:** Es el estándar en el mundo del desarrollo

---

## 🛠️ Herramientas Esenciales

Para poder seguir la materia sin problemas, vas a necesitar instalar las siguientes herramientas:

### 📦 Herramientas Base

**Git** 📝
- **¿Para qué?** Control de versiones
- **Instalación por SO:**

**Windows:**
- Descargá desde [git-scm.com](https://git-scm.com/)
- Durante la instalación, asegurate de marcar "Git Bash Here"
- También podés usar `winget install Git.Git` si tenés winget

**macOS:**
- **Homebrew:** `brew install git`
- **Xcode:** `xcode-select --install`
- **Descarga directa:** [git-scm.com](https://git-scm.com/)

**Linux:**
- **Ubuntu/Debian:** `sudo apt install git`
- **Fedora:** `sudo dnf install git`
- **Arch:** `sudo pacman -S git`

**Node.js** 🟢
- **¿Para qué?** Runtime de JavaScript y gestor de paquetes npm
- **Instalación:** A través de NVM (Node Version Manager)
- **¿Por qué NVM?** Te permite manejar múltiples versiones de Node.js

**Instalar NVM:**
- **Windows:** [nvm-windows](https://github.com/coreybutler/nvm-windows) 
- **macOS/Linux:** [nvm](https://github.com/nvm-sh/nvm)

**Después de instalar NVM:**
```bash
# Instalar la última versión LTS de Node.js
nvm install --lts

# Usar la versión LTS
nvm use --lts

# Verificar instalación
node --version
npm --version
```

**Visual Studio Code** 💻
- **¿Para qué?** Editor de código principal
- **Descarga:** [code.visualstudio.com](https://code.visualstudio.com/)
- **¿Por qué VS Code?** Excelente soporte para todos los lenguajes que vamos a usar

**Cuenta de GitHub** 🐙
- **¿Para qué?** Repositorio remoto para tus proyectos
- **Registro:** [github.com](https://github.com/)
- **Es gratis** y vas a necesitarla para entregar trabajos

### 🔧 Herramientas por Paradigma

**Para Paradigma Funcional (ELM)**
- **Compilador de ELM**
  ```bash
  npm install -g elm
  ```
- **elm-format** (formateo automático)
  ```bash
  npm install -g elm-format
  ```
- **elm-test** (testing)
  ```bash
  npm install -g elm-test
  ```

**Para Paradigma Lógico (Prolog)**
- **SWI-Prolog**
- **¿Para qué?** Intérprete de Prolog
- **Descarga:** [swi-prolog.org](https://www.swi-prolog.org/Download.html)

**Para Paradigma Orientado a Objetos (TypeScript)**
- **TypeScript** (se instala via npm)
  ```bash
  npm install -g typescript
  ```
- **ts-node** (para ejecutar TypeScript directamente)
  ```bash
  npm install -g ts-node
  ```

### 🔌 Extensiones para VS Code

**Obligatorias:**
- **Elm** (`Elm-tooling.elm-ls-vscode`)
- **VSC Prolog** (`arthurwang.vsc-prolog`) 
- **TypeScript and JavaScript Language Features** (viene incluido)

**Recomendadas:**
- **Git Lens** (`eamodio.gitlens`) - para mejor integración con Git
- **Bracket Pair Colorizer** (`coenraads.bracket-pair-colorizer-2`) - para ver mejor los corchetes
- **Auto Rename Tag** (`formulahendry.auto-rename-tag`) - útil para HTML/XML

### 🚀 Herramientas Opcionales

**Yarn** 📦
- **¿Para qué?** Alternativa a npm (más rápido)
- **Instalación:** 
  ```bash
  npm install -g yarn
  ```

---

## ✅ Verificación de Instalación

Para verificar que todo esté instalado correctamente, ejecutá estos comandos en la terminal:

```bash
# Verificar Node.js y npm
node --version
npm --version

# Verificar ELM
elm --version

# Verificar TypeScript
tsc --version

# Verificar Git
git --version
```

Para **SWI-Prolog**, abrí el programa y deberías ver el prompt `?-`

---

## 🆘 ¿Problemas con la instalación?

### Error de Execution Policies en Windows
Si al usar `npm` te aparece un error como:
```
cannot be loaded because running scripts is disabled on this system
```

**Solución:**
1. Abrí **PowerShell como Administrador** (click derecho → "Ejecutar como administrador")
2. Ejecutá este comando:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. Cuando te pregunte, escribí `Y` y presioná Enter
4. Cerrá PowerShell y abrí una nueva terminal normal
5. Ahora `npm` debería funcionar correctamente

**¿Qué hace esto?** Permite que PowerShell ejecute scripts que vos descargaste localmente, que es necesario para que npm funcione bien.

### Otros problemas comunes
- **Windows:** Asegurate de reiniciar la terminal después de instalar
- **macOS:** Podés usar Homebrew para instalar la mayoría de herramientas
- **Linux:** Usá el gestor de paquetes de tu distribución

**¿Seguís con problemas?** Consultá en clase o mandá un mensaje. ¡No te quedes trabado con la configuración!

---

## 📋 Checklist Final

- [ ] Node.js instalado
- [ ] Visual Studio Code instalado
- [ ] Git instalado y configurado
- [ ] **Cuenta de GitHub creada**
- [ ] **Git configurado con tu nombre y email**
- [ ] Compilador de ELM funcionando
- [ ] SWI-Prolog funcionando
- [ ] TypeScript instalado
- [ ] Extensiones de VS Code instaladas
- [ ] Verificación de comandos exitosa

¡Una vez que tengas todo esto, estás listo para arrancar! 🎉
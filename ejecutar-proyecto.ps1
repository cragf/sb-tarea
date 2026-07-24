$javaPaths = @(
    "C:\Program Files\Java\*",
    "C:\Program Files (x86)\Java\*",
    "C:\Program Files\Eclipse Adoptium\*",
    "C:\Program Files\Amazon Corretto\*"
)

$javaFound = $false

foreach ($path in $javaPaths) {
    $dirs = Get-ChildItem -Path $path -ErrorAction SilentlyContinue
    foreach ($dir in $dirs) {
        $javaExe = Join-Path $dir.FullName "bin\java.exe"
        if (Test-Path $javaExe) {
            $env:JAVA_HOME = $dir.FullName
            $env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
            $javaFound = $true
            break
        }
    }
    if ($javaFound) { break }
}

if (-not $javaFound) {
    Write-Host "Java no encontrado. Ingresa la ruta manualmente:"
    $rutaJava = Read-Host "Ruta de Java (ej: C:\Program Files\Java\jdk-25)"
    $env:JAVA_HOME = $rutaJava
    $env:PATH = "$env:JAVA_HOME\bin;$env:PATH"
}

java -version

cd "C:\Users\User\Documents\pr de java\sb-tarea"

$mavenDir = "$env:USERPROFILE\maven"
$mavenHome = "$mavenDir\apache-maven-3.9.6"

if (!(Test-Path $mavenHome)) {
    Write-Host "Descargando Maven..."
    New-Item -ItemType Directory -Force -Path $mavenDir | Out-Null
    $url = "https://archive.apache.org/dist/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip"
    Invoke-WebRequest -Uri $url -OutFile "$mavenDir\maven.zip"
    Expand-Archive -Path "$mavenDir\maven.zip" -DestinationPath $mavenDir -Force
    Remove-Item "$mavenDir\maven.zip" -Force
}

$env:MAVEN_HOME = $mavenHome
$env:PATH = "$mavenHome\bin;$env:PATH"

& "$mavenHome\bin\mvn.cmd" clean install -DskipTests
& "$mavenHome\bin\mvn.cmd" spring-boot:run
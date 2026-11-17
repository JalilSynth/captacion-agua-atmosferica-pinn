param([string]$Text = "")

# Si no se pasa texto, intenta leer el JSON del hook de Claude Code (campo "message")
if (-not $Text) {
  try {
    $raw = [Console]::In.ReadToEnd()
    if ($raw) { $Text = ($raw | ConvertFrom-Json).message }
  } catch { }
}
if (-not $Text) { $Text = "Claude terminó la tarea." }

Add-Type -AssemblyName System.Speech
$s = New-Object System.Speech.Synthesis.SpeechSynthesizer

# Usa una voz en español si está instalada (Sabina/Helena en Windows)
$es = $s.GetInstalledVoices() | Where-Object { $_.VoiceInfo.Culture.Name -like 'es*' } | Select-Object -First 1
if ($es) { $s.SelectVoice($es.VoiceInfo.Name) }

$s.Rate = 0      # -10 (lento) a 10 (rápido)
$s.Volume = 90
$s.Speak($Text)

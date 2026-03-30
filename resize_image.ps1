Add-Type -AssemblyName System.Drawing
$inPath = "C:\Users\tanya\.gemini\antigravity\brain\a5b34e11-80e5-447c-9d13-493279e8b3a9\empty_insect_drawer_1774892459282.png"
$outPath = "C:\Users\tanya\.gemini\antigravity\scratch\empty_insect_drawer_1500.png"
$img = [System.Drawing.Image]::FromFile($inPath)
$bmp = New-Object System.Drawing.Bitmap 1500, 1500
$gfx = [System.Drawing.Graphics]::FromImage($bmp)
$gfx.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$gfx.DrawImage($img, 0, 0, 1500, 1500)
$bmp.Save($outPath, [System.Drawing.Imaging.ImageFormat]::Png)
$gfx.Dispose()
$bmp.Dispose()
$img.Dispose()

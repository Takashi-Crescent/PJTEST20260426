<# 暗号化文字列をセキュア文字列に変換する
   コマンドレット: ConvertTo-SecureString
   エイリアス: なし
   説明: 暗号化文字列(暗号化された標準文字列)を、セキュア文字列(セキュリティで保護された文字列)に変換する。
         セキュア文字列はファイルに保存できない(つまり不可視データ)が、暗号化文字列はファイルに出力できる(つまり可視化データ)。
#>

# コマンドプロンプトから入力された文字列からセキュア文字列を作成し、$Secureに格納する。
$SecureString = Read-Host -AsSecureString -Prompt "Enter your strings"

# ＄Secureの内容を表示するが、「セキュア文字列の型」を返す。
$SecureString

$Encrypted = ConvertFrom-SecureString -SecureString $SecureString
# ＄Encryptedの内容を表示すると、暗号化文字列が表示される。
$Encrypted

# $Encryptedに格納されている暗号化文字列をセキュア文字列に変換するが、暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
ConvertTo-SecureString -String  $Encrypted

# プレーンテキストをセキュア文字列に変換する。→ 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
ConvertTo-SecureString "P@ssW0rD!" -AsPlainText -Force

# プレーンテキストをセキュア文字列に変換する。→ 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
$plaintxt = "ABCDEFG"
ConvertTo-SecureString $plaintxt -AsPlainText -Force


<# 実行結果
PS C:\Users\User\WORK\PowerShell> . 'C:\Users\User\WORK\PowerShell\005_文字列の変換\暗号化文字列をセキュア文字列に変換する.PS1'
Enter your strings: *****　→ Helloを入力
System.Security.SecureString → 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
01000000d08c9ddf0115d1118c7a00c04fc297eb0100000014eafa6ab0a93345b063fcccdda598f100000000020000000000106600000001000020000000666d6a5ba44f6faa43579b151af37b8244bed960a76444b278e5d33150787cbe000000000e8000000002000020000000388788d067e3a32d02b88826e4d8633542a07e2cd887bb1d3e04b4aab81cd4fa10000000964c9e6a3ea8d16d524f702c78c299eb4000000096b8202365e4adfab227f679ffd1968d0f1d30a1807fbb0c721243b208caae51bc6d51c3c450d50273154c448fd8186b1e28a5cb291263dd087b38542ed298b6
System.Security.SecureString → 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
System.Security.SecureString → 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
System.Security.SecureString → 暗号化文字列は非表示のため、「セキュア文字列の型」を返す。
PS C:\Users\User\WORK\PowerShell> 
#>
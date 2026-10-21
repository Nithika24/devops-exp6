
$response = Invoke-WebRequest -Uri "http://localhost:8080" -UseBasicParsing

if ($response.Content -match "Welcome to DevOps Automation!") {
    Write-Output "TEST PASSED: Webpage is working correctly."
} else {
    Write-Output "TEST FAILED: Expected text not found."
    exit 1
}

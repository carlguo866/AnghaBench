; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_kuhl_m_sekurlsa_nt5_clean.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/crypto/extr_kuhl_m_sekurlsa_nt5.c_kuhl_m_sekurlsa_nt5_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kuhl_m_sekurlsa_nt5_KeyInit = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_nt5_clean() #0 {
  %1 = load i32, i32* @kuhl_m_sekurlsa_nt5_KeyInit, align 4
  %2 = call i64 @NT_SUCCESS(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @kuhl_m_sekurlsa_nt5_LsaInitializeProtectedMemory()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %7
}

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kuhl_m_sekurlsa_nt5_LsaInitializeProtectedMemory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

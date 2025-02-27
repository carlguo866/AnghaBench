; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_cred_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_cred_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.cred*, i32)* @apparmor_cred_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_cred_prepare(%struct.cred* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.cred* %1, %struct.cred** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cred*, %struct.cred** %4, align 8
  %8 = load %struct.cred*, %struct.cred** %5, align 8
  %9 = call i32 @cred_label(%struct.cred* %8)
  %10 = call i32 @aa_get_newest_label(i32 %9)
  %11 = call i32 @set_cred_label(%struct.cred* %7, i32 %10)
  ret i32 0
}

declare dso_local i32 @set_cred_label(%struct.cred*, i32) #1

declare dso_local i32 @aa_get_newest_label(i32) #1

declare dso_local i32 @cred_label(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

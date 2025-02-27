; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_refresh_store_certs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_refresh_store_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_MGR_CERTS = common dso_local global i32 0, align 4
@LVM_DELETEALLITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @refresh_store_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refresh_store_certs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IDC_MGR_CERTS, align 4
  %6 = call i32 @GetDlgItem(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @free_certs(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @LVM_DELETEALLITEMS, align 4
  %11 = call i32 @SendMessageW(i32 %9, i32 %10, i32 0, i32 0)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @cert_mgr_current_store(i32 %13)
  %15 = call i32 @show_store_certs(i32 %12, i32 %14)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @free_certs(i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @show_store_certs(i32, i32) #1

declare dso_local i32 @cert_mgr_current_store(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

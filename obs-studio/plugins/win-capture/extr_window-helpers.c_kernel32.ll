; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_kernel32.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_kernel32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel32.kernel32_handle = internal global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"kernel32\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @kernel32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kernel32() #0 {
  %1 = load i32*, i32** @kernel32.kernel32_handle, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** @kernel32.kernel32_handle, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32*, i32** @kernel32.kernel32_handle, align 8
  ret i32* %6
}

declare dso_local i32* @GetModuleHandleA(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

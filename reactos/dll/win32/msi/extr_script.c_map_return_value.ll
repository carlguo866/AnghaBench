; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_script.c_map_return_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_script.c_map_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_INSTALL_USEREXIT = common dso_local global i32 0, align 4
@ERROR_INSTALL_SUSPEND = common dso_local global i32 0, align 4
@ERROR_INSTALL_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @map_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_return_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 0, label %5
    i32 129, label %5
    i32 130, label %5
    i32 131, label %7
    i32 128, label %9
    i32 132, label %11
  ]

5:                                                ; preds = %1, %1, %1
  %6 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %6, i32* %2, align 4
  br label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @ERROR_INSTALL_USEREXIT, align 4
  store i32 %8, i32* %2, align 4
  br label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR_INSTALL_SUSPEND, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load i32, i32* @ERROR_INSTALL_FAILURE, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %9, %7, %5
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

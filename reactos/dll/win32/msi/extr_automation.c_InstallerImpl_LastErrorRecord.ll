; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_LastErrorRecord.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_LastErrorRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISP_E_MEMBERNOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*)* @InstallerImpl_LastErrorRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstallerImpl_LastErrorRecord(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DISPATCH_METHOD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @DISP_E_MEMBERNOTFOUND, align 4
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %5
  %19 = call i32 @FIXME(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @VariantInit(i32* %20)
  %22 = load i32, i32* @S_OK, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @VariantInit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

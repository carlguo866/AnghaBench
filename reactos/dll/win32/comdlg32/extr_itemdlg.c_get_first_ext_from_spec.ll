; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_get_first_ext_from_spec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_itemdlg.c_get_first_ext_from_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @get_first_ext_from_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_first_ext_from_spec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @lstrcpyW(i8* %8, i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @StrChrW(i8* %11, i8 signext 59)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @PathFindExtensionW(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @StrChrW(i8* %19, i8 signext 42)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %25

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %3, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

declare dso_local i32 @lstrcpyW(i8*, i32) #1

declare dso_local i8* @StrChrW(i8*, i8 signext) #1

declare dso_local i8* @PathFindExtensionW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

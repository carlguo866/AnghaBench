; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_get_shdoclc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_main.c_get_shdoclc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_shdoclc.wszShdoclc = internal constant [12 x i8] c"shdoclc.dll\00", align 1
@shdoclc = common dso_local global i64 0, align 8
@LOAD_LIBRARY_AS_DATAFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_shdoclc() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @shdoclc, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i64, i64* @shdoclc, align 8
  store i64 %5, i64* %1, align 8
  br label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @LOAD_LIBRARY_AS_DATAFILE, align 4
  %8 = call i64 @LoadLibraryExW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_shdoclc.wszShdoclc, i64 0, i64 0), i32* null, i32 %7)
  store i64 %8, i64* @shdoclc, align 8
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %6, %4
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

declare dso_local i64 @LoadLibraryExW(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

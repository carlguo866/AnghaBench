; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_full_dayofweek.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_full_dayofweek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_time = type { i32 }

@DAY_1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_Locale_full_dayofweek(%struct._Locale_time* %0, i32 %1) #0 {
  %3 = alloca %struct._Locale_time*, align 8
  %4 = alloca i32, align 4
  store %struct._Locale_time* %0, %struct._Locale_time** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @DAY_1, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = load %struct._Locale_time*, %struct._Locale_time** %3, align 8
  %10 = ptrtoint %struct._Locale_time* %9 to i32
  %11 = call i8* @nl_langinfo_l(i64 %8, i32 %10)
  ret i8* %11
}

declare dso_local i8* @nl_langinfo_l(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

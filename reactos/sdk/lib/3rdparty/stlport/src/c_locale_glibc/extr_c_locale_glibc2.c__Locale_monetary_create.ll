; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_monetary_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_monetary_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_monetary = type { i32 }
%struct._Locale_name_hint = type { i32 }

@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@LC_MONETARY_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._Locale_monetary* @_Locale_monetary_create(i8* %0, %struct._Locale_name_hint* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._Locale_name_hint*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct._Locale_name_hint* %1, %struct._Locale_name_hint** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %8 = load i32*, i32** %6, align 8
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @LC_MONETARY_MASK, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @newlocale(i32 %9, i8* %10, i32* null)
  %12 = inttoptr i64 %11 to %struct._Locale_monetary*
  ret %struct._Locale_monetary* %12
}

declare dso_local i64 @newlocale(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_int_frac_digits.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_int_frac_digits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_monetary = type { i32 }
%struct.TYPE_3__ = type { i8** }

@LC_MONETARY = common dso_local global i64 0, align 8
@INT_FRAC_DIGITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_Locale_int_frac_digits(%struct._Locale_monetary* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._Locale_monetary*, align 8
  %4 = alloca i8*, align 8
  store %struct._Locale_monetary* %0, %struct._Locale_monetary** %3, align 8
  %5 = load %struct._Locale_monetary*, %struct._Locale_monetary** %3, align 8
  %6 = bitcast %struct._Locale_monetary* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = load i64, i64* @LC_MONETARY, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 67
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8 0, i8* %2, align 1
  br label %30

24:                                               ; preds = %17, %1
  %25 = load i32, i32* @INT_FRAC_DIGITS, align 4
  %26 = load %struct._Locale_monetary*, %struct._Locale_monetary** %3, align 8
  %27 = bitcast %struct._Locale_monetary* %26 to %struct.TYPE_3__*
  %28 = call i8* @nl_langinfo_l(i32 %25, %struct.TYPE_3__* %27)
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %2, align 1
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i8, i8* %2, align 1
  ret i8 %31
}

declare dso_local i8* @nl_langinfo_l(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

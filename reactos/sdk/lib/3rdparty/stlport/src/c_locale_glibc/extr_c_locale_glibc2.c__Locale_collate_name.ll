; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_collate_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_collate_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_collate = type { i32 }
%struct.TYPE_2__ = type { i8** }

@LC_COLLATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_Locale_collate_name(%struct._Locale_collate* %0, i8* %1) #0 {
  %3 = alloca %struct._Locale_collate*, align 8
  %4 = alloca i8*, align 8
  store %struct._Locale_collate* %0, %struct._Locale_collate** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._Locale_collate*, %struct._Locale_collate** %3, align 8
  %6 = bitcast %struct._Locale_collate* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8**, i8*** %7, align 8
  %9 = load i64, i64* @LC_COLLATE, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9
  %11 = load i8*, i8** %10, align 8
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

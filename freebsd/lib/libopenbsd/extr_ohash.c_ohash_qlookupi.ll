; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_qlookupi.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libopenbsd/extr_ohash.c_ohash_qlookupi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ohash_qlookupi(%struct.ohash* %0, i8* %1, i8** %2) #0 {
  %4 = alloca %struct.ohash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.ohash* %0, %struct.ohash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = call i32 @ohash_interval(i8* %8, i8** %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ohash*, %struct.ohash** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ohash_lookup_interval(%struct.ohash* %11, i8* %12, i8* %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @ohash_interval(i8*, i8**) #1

declare dso_local i32 @ohash_lookup_interval(%struct.ohash*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

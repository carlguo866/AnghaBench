; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32 }
%struct.sti_glob_cfg = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_call(%struct.sti_struct* %0, i64 %1, i8* %2, i8* %3, i8* %4, %struct.sti_glob_cfg* %5) #0 {
  %7 = alloca %struct.sti_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sti_glob_cfg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.sti_struct* %0, %struct.sti_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.sti_glob_cfg* %5, %struct.sti_glob_cfg** %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @STI_PTR(i8* %18)
  store i64 %19, i64* %13, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @STI_PTR(i8* %20)
  store i64 %21, i64* %14, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i64 @STI_PTR(i8* %22)
  store i64 %23, i64* %15, align 8
  %24 = load %struct.sti_glob_cfg*, %struct.sti_glob_cfg** %12, align 8
  %25 = bitcast %struct.sti_glob_cfg* %24 to i8*
  %26 = call i64 @STI_PTR(i8* %25)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @pdc_sti_call(i64 %27, i64 %28, i64 %29, i64 %30, i64 %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  ret i32 %33
}

declare dso_local i64 @STI_PTR(i8*) #1

declare dso_local i32 @pdc_sti_call(i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

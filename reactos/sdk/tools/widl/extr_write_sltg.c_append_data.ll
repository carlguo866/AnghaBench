; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_append_data.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_sltg.c_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sltg_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sltg_data*, i8*, i32)* @append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_data(%struct.sltg_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.sltg_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sltg_data* %0, %struct.sltg_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %9 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %15 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %20 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @max(i32 %22, i32 %23)
  %25 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %26 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %28 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %31 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @xrealloc(i64 %29, i32 %32)
  %34 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %35 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %18, %3
  %37 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %38 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %41 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @memcpy(i64 %44, i8* %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sltg_data*, %struct.sltg_data** %4, align 8
  %50 = getelementptr inbounds %struct.sltg_data, %struct.sltg_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @xrealloc(i64, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

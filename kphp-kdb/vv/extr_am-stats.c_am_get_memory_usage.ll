; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_am_get_memory_usage.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_am-stats.c_am_get_memory_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/proc/%d/statm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @am_get_memory_usage(i64 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @snprintf(i8* %10, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 32
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %20 = call i64 @read_whole_file(i8* %18, i8* %19, i32 4096)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %28

23:                                               ; preds = %3
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %25 = load i64*, i64** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @parse_statm(i8* %24, i64* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @read_whole_file(i8*, i8*, i32) #1

declare dso_local i32 @parse_statm(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

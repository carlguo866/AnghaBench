; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___do_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___do_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i8*, i64)* @__do_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_read_buf(%struct.feat_fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.feat_fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.feat_fd* %0, %struct.feat_fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %10 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %13 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = icmp sgt i64 %8, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %21 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %24 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @memcpy(i8* %19, i64 %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %31 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %18, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

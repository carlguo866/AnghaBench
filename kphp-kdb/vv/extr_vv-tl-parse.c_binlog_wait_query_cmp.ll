; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_binlog_wait_query_cmp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_binlog_wait_query_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binlog_wait_query = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @binlog_wait_query_cmp(%struct.binlog_wait_query* %0, %struct.binlog_wait_query* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.binlog_wait_query*, align 8
  %5 = alloca %struct.binlog_wait_query*, align 8
  store %struct.binlog_wait_query* %0, %struct.binlog_wait_query** %4, align 8
  store %struct.binlog_wait_query* %1, %struct.binlog_wait_query** %5, align 8
  %6 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %4, align 8
  %7 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %5, align 8
  %10 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %4, align 8
  %15 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %5, align 8
  %18 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  store i64 %20, i64* %3, align 8
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %4, align 8
  %23 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.binlog_wait_query*, %struct.binlog_wait_query** %5, align 8
  %26 = getelementptr inbounds %struct.binlog_wait_query, %struct.binlog_wait_query* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__add_rpc_iostats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c__add_rpc_iostats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_iostats = type { i64, i8*, i8*, i8*, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_iostats*, %struct.rpc_iostats*)* @_add_rpc_iostats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_add_rpc_iostats(%struct.rpc_iostats* %0, %struct.rpc_iostats* %1) #0 {
  %3 = alloca %struct.rpc_iostats*, align 8
  %4 = alloca %struct.rpc_iostats*, align 8
  store %struct.rpc_iostats* %0, %struct.rpc_iostats** %3, align 8
  store %struct.rpc_iostats* %1, %struct.rpc_iostats** %4, align 8
  %5 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %6 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %9 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %20 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %34 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %41 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %44 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @ktime_add(i8* %42, i8* %45)
  %47 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %48 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %50 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %53 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @ktime_add(i8* %51, i8* %54)
  %56 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @ktime_add(i8* %60, i8* %63)
  %65 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %68 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.rpc_iostats*, %struct.rpc_iostats** %3, align 8
  %71 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  ret void
}

declare dso_local i8* @ktime_add(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

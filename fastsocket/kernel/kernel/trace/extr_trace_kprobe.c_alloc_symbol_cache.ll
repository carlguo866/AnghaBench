; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_alloc_symbol_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_alloc_symbol_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_cache = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symbol_cache* (i8*, i64)* @alloc_symbol_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symbol_cache* @alloc_symbol_cache(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.symbol_cache*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.symbol_cache*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store %struct.symbol_cache* null, %struct.symbol_cache** %3, align 8
  br label %40

14:                                               ; preds = %9
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.symbol_cache* @kzalloc(i32 16, i32 %15)
  store %struct.symbol_cache* %16, %struct.symbol_cache** %6, align 8
  %17 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %18 = icmp ne %struct.symbol_cache* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.symbol_cache* null, %struct.symbol_cache** %3, align 8
  br label %40

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kstrdup(i8* %21, i32 %22)
  %24 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %25 = getelementptr inbounds %struct.symbol_cache, %struct.symbol_cache* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %27 = getelementptr inbounds %struct.symbol_cache, %struct.symbol_cache* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %32 = call i32 @kfree(%struct.symbol_cache* %31)
  store %struct.symbol_cache* null, %struct.symbol_cache** %3, align 8
  br label %40

33:                                               ; preds = %20
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %36 = getelementptr inbounds %struct.symbol_cache, %struct.symbol_cache* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  %38 = call i32 @update_symbol_cache(%struct.symbol_cache* %37)
  %39 = load %struct.symbol_cache*, %struct.symbol_cache** %6, align 8
  store %struct.symbol_cache* %39, %struct.symbol_cache** %3, align 8
  br label %40

40:                                               ; preds = %33, %30, %19, %13
  %41 = load %struct.symbol_cache*, %struct.symbol_cache** %3, align 8
  ret %struct.symbol_cache* %41
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.symbol_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.symbol_cache*) #1

declare dso_local i32 @update_symbol_cache(%struct.symbol_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

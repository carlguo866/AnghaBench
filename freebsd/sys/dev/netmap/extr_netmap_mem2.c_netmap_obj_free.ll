; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"invalid index %u, max %u\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ouch, double free on buffer %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_pool*, i32)* @netmap_obj_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_obj_free(%struct.netmap_obj_pool* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netmap_obj_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %10 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %16 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  store i32 1, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %21 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 32
  %29 = shl i32 1, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, i32, ...) @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 1, i32* %3, align 4
  br label %47

38:                                               ; preds = %19
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %44 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %35, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @nm_prerr(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

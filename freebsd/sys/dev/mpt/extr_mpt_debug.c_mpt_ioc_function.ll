; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_debug.c_mpt_ioc_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_debug.c_mpt_ioc_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Error_Map = type { i32, i8* }

@IOC_Func = common dso_local global %struct.Error_Map* null, align 8
@mpt_ioc_function.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"Unknown (0x%08x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @mpt_ioc_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpt_ioc_function(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Error_Map*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.Error_Map*, %struct.Error_Map** @IOC_Func, align 8
  store %struct.Error_Map* %5, %struct.Error_Map** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.Error_Map*, %struct.Error_Map** %4, align 8
  %8 = getelementptr inbounds %struct.Error_Map, %struct.Error_Map* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load %struct.Error_Map*, %struct.Error_Map** %4, align 8
  %13 = getelementptr inbounds %struct.Error_Map, %struct.Error_Map* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.Error_Map*, %struct.Error_Map** %4, align 8
  %19 = getelementptr inbounds %struct.Error_Map, %struct.Error_Map* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %2, align 8
  br label %27

21:                                               ; preds = %11
  %22 = load %struct.Error_Map*, %struct.Error_Map** %4, align 8
  %23 = getelementptr inbounds %struct.Error_Map, %struct.Error_Map* %22, i32 1
  store %struct.Error_Map* %23, %struct.Error_Map** %4, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mpt_ioc_function.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mpt_ioc_function.buf, i64 0, i64 0), i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

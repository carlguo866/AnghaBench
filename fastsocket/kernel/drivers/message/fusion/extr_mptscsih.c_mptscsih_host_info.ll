; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptscsih.c_mptscsih_host_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptscsih.c_mptscsih_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.info_str = type { i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"%s: %s, \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%08xh, \00", align 1
@MPT_FW_REV_MAGIC_ID_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Ports=%d, \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MaxQ=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64, i32)* @mptscsih_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptscsih_host_info(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.info_str, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.info_str*, i8*, i32, ...) @mptscsih_copy_info(%struct.info_str* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load i32, i32* @MPT_FW_REV_MAGIC_ID_STRING, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.info_str*, i8*, i32, ...) @mptscsih_copy_info(%struct.info_str* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.info_str*, i8*, i32, ...) @mptscsih_copy_info(%struct.info_str* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.info_str*, i8*, i32, ...) @mptscsih_copy_info(%struct.info_str* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.info_str, %struct.info_str* %9, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  br label %52

51:                                               ; preds = %4
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i64 [ %50, %45 ], [ 0, %51 ]
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local i32 @mptscsih_copy_info(%struct.info_str*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

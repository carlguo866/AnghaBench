; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@G_CONCAT_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Userland and kernel parts are out of sync.\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Unknown verb.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_concat_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = call i64* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %48

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @G_CONCAT_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %48

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %30 = load %struct.g_class*, %struct.g_class** %5, align 8
  %31 = call i32 @g_concat_ctl_create(%struct.gctl_req* %29, %struct.g_class* %30)
  br label %48

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %32
  %41 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %42 = load %struct.g_class*, %struct.g_class** %5, align 8
  %43 = call i32 @g_concat_ctl_destroy(%struct.gctl_req* %41, %struct.g_class* %42)
  br label %48

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %47 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40, %28, %21, %13
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_concat_ctl_create(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_concat_ctl_destroy(%struct.gctl_req*, %struct.g_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

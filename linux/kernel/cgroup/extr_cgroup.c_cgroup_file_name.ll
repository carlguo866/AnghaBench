; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_file_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cftype = type { i32, i32, %struct.cgroup_subsys* }
%struct.cgroup_subsys = type { i8*, i8* }

@CFTYPE_NO_PREFIX = common dso_local global i32 0, align 4
@CGRP_ROOT_NOPREFIX = common dso_local global i32 0, align 4
@CFTYPE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c".__DEBUG__.\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CGROUP_FILE_NAME_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cgroup*, %struct.cftype*, i8*)* @cgroup_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cgroup_file_name(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cgroup_subsys*, align 8
  %8 = alloca i8*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.cftype*, %struct.cftype** %5, align 8
  %10 = getelementptr inbounds %struct.cftype, %struct.cftype* %9, i32 0, i32 2
  %11 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %10, align 8
  store %struct.cgroup_subsys* %11, %struct.cgroup_subsys** %7, align 8
  %12 = load %struct.cftype*, %struct.cftype** %5, align 8
  %13 = getelementptr inbounds %struct.cftype, %struct.cftype* %12, i32 0, i32 2
  %14 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %13, align 8
  %15 = icmp ne %struct.cgroup_subsys* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load %struct.cftype*, %struct.cftype** %5, align 8
  %18 = getelementptr inbounds %struct.cftype, %struct.cftype* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CFTYPE_NO_PREFIX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %16
  %24 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %25 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CGRP_ROOT_NOPREFIX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %23
  %33 = load %struct.cftype*, %struct.cftype** %5, align 8
  %34 = getelementptr inbounds %struct.cftype, %struct.cftype* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CFTYPE_DEBUG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @CGROUP_FILE_NAME_MAX, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %45 = call i64 @cgroup_on_dfl(%struct.cgroup* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %7, align 8
  %49 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  br label %55

51:                                               ; preds = %32
  %52 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %7, align 8
  %53 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i8* [ %50, %47 ], [ %54, %51 ]
  %57 = load %struct.cftype*, %struct.cftype** %5, align 8
  %58 = getelementptr inbounds %struct.cftype, %struct.cftype* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snprintf(i8* %41, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %56, i32 %59)
  br label %68

61:                                               ; preds = %23, %16, %3
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.cftype*, %struct.cftype** %5, align 8
  %64 = getelementptr inbounds %struct.cftype, %struct.cftype* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CGROUP_FILE_NAME_MAX, align 4
  %67 = call i32 @strscpy(i8* %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i8*, i8** %6, align 8
  ret i8* %69
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i64 @cgroup_on_dfl(%struct.cgroup*) #1

declare dso_local i32 @strscpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
